using System.ComponentModel;
using System.IO;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Forms;
using Microsoft.EntityFrameworkCore;
using MySqlConnector;
using Xamarin.Essentials;

namespace RCL
{
    public class ProfileViewModel : INotifyPropertyChanged
    {
        private readonly ApplicationDbContext _dbContext;
        private readonly SharedPreferences _sharedPreferences;
        private readonly NavigationManager _navigationManager;
        private User _data;
        private IBrowserFile _file;
        private string _profilePath;
        private string _message;
        private string uploadDirectory = $"C:/Users/User/Desktop/BMB/Hybrid MVVM/RCL/wwwroot/Images/Profiles/";
        private const long MaxFileSize = 10*1024*1024;//10 MB in bytes

        public event PropertyChangedEventHandler? PropertyChanged;

        public ProfileViewModel(ApplicationDbContext dbContext, SharedPreferences sharedPreferences, NavigationManager navigationManager)
        {
            _dbContext = dbContext;
            _sharedPreferences = sharedPreferences;
            _navigationManager = navigationManager;
            _profilePath = string.Empty;
            _message = string.Empty;
        }
        
        public User Data
        {
            get => _data;
            set
            {
                _data = value;
                OnPropertyChanged();
            }
        }
        public string ProfilePath
        {
            get => _profilePath;
            set
            {
                _profilePath = value;
                OnPropertyChanged();
            }
        }
        public string Message
        {
            get => _message;
            set
            {
                _message = value;
                OnPropertyChanged();
            }
        }

        public bool IsLoggedIn => !string.IsNullOrEmpty(_sharedPreferences.Id);

        //OnInitializedAsync()
        public async Task LoadProfileDataAsync()
        {
            Data = await _dbContext.GetProfileDataAsync(_sharedPreferences.Id);
        }

        public void ManageDirectory(string directory)
        {
            if (Directory.Exists(directory))
            {
                Directory.Delete(directory, true);
            }
            Directory.CreateDirectory(directory);
        }
        public async Task HandleFileSelectedAndroid()
        {
            try
            {
                FileResult photo = await MediaPicker.PickPhotoAsync(new MediaPickerOptions { Title = "Please pick a picture" });
                using (Stream sourceStream = await photo.OpenReadAsync())
                {
                    string saveDirectory = Path.Combine(FileSystem.AppDataDirectory, "Profiles/raoul"); //
                    ManageDirectory(saveDirectory);
                    string localFilePath = Path.Combine(saveDirectory, photo.FileName);
                    using (FileStream localFileStream = File.OpenWrite(localFilePath))
                    {
                        await sourceStream.CopyToAsync(localFileStream);
                    }
                    Message = "Image ready, press upload.\n" + localFilePath;
                }
            }
            catch (Exception ex)
            {
                Message = "Please pick a photo.";
            }
        }
        public async Task HandlePhotoTakeAndroid()
            {
            try
            {
                FileResult photo = await MediaPicker.CapturePhotoAsync(new MediaPickerOptions { Title = "Please take a photo" });
                using (Stream sourceStream = await photo.OpenReadAsync())
                {
                    string saveDirectory = Path.Combine(FileSystem.AppDataDirectory, "Profiles/raoul"); //
                    ManageDirectory(saveDirectory);
                    string localFilePath = Path.Combine(saveDirectory, photo.FileName);
                    using (FileStream localFileStream = File.OpenWrite(localFilePath))
                    {
                        await sourceStream.CopyToAsync(localFileStream);
                    }
                    Message = "Image ready, press upload.\n" + localFilePath;
                }
            }
            catch (Exception ex)
            {
                Message = "Error...";
            }
        }
        public async Task HandleFileSelected(InputFileChangeEventArgs e)
        {
            _file = e.File;
            if (_file != null && _file.Size > MaxFileSize)
            {
                _file = null;
                ProfilePath = null;
                Message = $"File size exceeds the maximum limit of {MaxFileSize / (1024 * 1024)} MB!";
                return;
            }
            if (_file != null && _file.Size > 0)
            {
                uploadDirectory += _sharedPreferences.Id;
                ManageDirectory(uploadDirectory);
                string fullPath = Path.Combine(uploadDirectory, _file.Name);
                using (FileStream fs = new FileStream(fullPath, FileMode.Create))
                {
                    await _file.OpenReadStream().CopyToAsync(fs);
                }
                ProfilePath = $"/_content/RCL/Images/Profiles/{_sharedPreferences.Id}/{_file.Name}";
                Message = "Image ready, press upload.";
            }
        }

        public async Task UploadProfile()
        {
            if (string.IsNullOrEmpty(ProfilePath))
            {
                Message = "There is nothing to upload...";
            }
            try
            {
                var user = await _dbContext.Users.FirstOrDefaultAsync(u => u.Username == _sharedPreferences.Id);
                if (user != null)
                {
                    user.Profile = ProfilePath;
                    _dbContext.Users.Update(user);
                    await _dbContext.SaveChangesAsync();
                    Message = "Profile updated successfully!";
                    _data = await _dbContext.Users.FirstOrDefaultAsync(u => u.Username == _sharedPreferences.Id);
                }
                else
                {
                    Message = "User not found.";
                }
            }
            catch (Exception ex)
            {
                Message = $"Error updating profile: {ex.Message}";
            }
        }

        public void SignIn()
        {
            _navigationManager.NavigateTo("/");
        }

        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
