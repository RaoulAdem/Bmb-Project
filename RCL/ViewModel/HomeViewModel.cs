using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Forms;
using Microsoft.EntityFrameworkCore;
using MySqlConnector;
using Xamarin.Essentials;

namespace RCL
{
    public class HomeViewModel : INotifyPropertyChanged
    {
        private readonly ApplicationDbContext _dbContext;
        private readonly LocalDb _db;
        private readonly SharedPreferences _sharedPreferences;
        private readonly NavigationManager _navigationManager;
        private User _data;
        private string _message;

        public event PropertyChangedEventHandler? PropertyChanged;

        public HomeViewModel(ApplicationDbContext dbContext, LocalDb db, SharedPreferences sharedPreferences, NavigationManager navigationManager)
        {
            _dbContext = dbContext;
            _db = db;
            _sharedPreferences = sharedPreferences;
            _navigationManager = navigationManager;
            _data = new User();
            _message = string.Empty;
            SQLitePCL.Batteries.Init();
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

        public async Task HandleAuth()
        {
            User user;
            if (DeviceInfo.Platform == DevicePlatform.Android)
            {
                user = await _db.GetUserAsync(username: _data.Username, password: _data.Password);
                _sharedPreferences.IsAndroid = true;
            } else
            {
                user = await _dbContext.GetUserAsync(username: _data.Username, password: _data.Password);
            }
            if (user != null)
            {
                _sharedPreferences.Id = user.Username.ToLower();
                if (user.isAdmin == "yes")
                {
                    _sharedPreferences.IsAdmin = true;
                    _navigationManager.NavigateTo("/admin");
                }
                else
                {
                    _sharedPreferences.IsAdmin = false;
                    _navigationManager.NavigateTo("/profile");
                }
            }
            else
            {
                _message = "Wrong username or password!";
            }
        }

        public void LogOut()
        {
            _sharedPreferences.Id = "";
            OnPropertyChanged(nameof(IsLoggedIn)); //refresh page
        }

        protected void OnPropertyChanged([CallerMemberName] string? propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
