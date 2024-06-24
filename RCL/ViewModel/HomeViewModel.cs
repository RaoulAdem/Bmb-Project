using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Forms;
using MySqlConnector;

namespace RCL
{
    public class HomeViewModel : INotifyPropertyChanged
    {
        private readonly Db _db;
        private readonly SharedPreferences _sharedPreferences;
        private readonly NavigationManager _navigationManager;
        private User _data;
        private string _message;

        public event PropertyChangedEventHandler? PropertyChanged;

        public HomeViewModel(Db db, SharedPreferences sharedPreferences, NavigationManager navigationManager)
        {
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
            using (var conn = new MySqlConnection(_db.GetConnection()))
            {
                await conn.OpenAsync();
                using (var cmd = new MySqlCommand("SELECT COUNT(*) FROM users WHERE Username=@username AND Password=@password", conn))
                {
                    cmd.Parameters.AddWithValue("@username", _data.Username.ToLower());
                    cmd.Parameters.AddWithValue("@password", _data.Password);
                    var count = Convert.ToInt32(await cmd.ExecuteScalarAsync());
                    if (count > 0)
                    {
                        _sharedPreferences.Id = _data.Username.ToLower();
                        _navigationManager.NavigateTo("/profile");
                    }
                    else
                    {
                        _message = "Wrong username or password!";
                        return;
                    }
                }
                using (var cmd = new MySqlCommand("SELECT IsAdmin FROM users WHERE Username=@username", conn))
                {
                    cmd.Parameters.AddWithValue("@username", _data.Username.ToLower());
                    var result = await cmd.ExecuteScalarAsync() as string;
                    if (result == "yes")
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
                await conn.CloseAsync();
            }
        }

        public void LogOut()
        {
            _sharedPreferences.Id = "";
            OnPropertyChanged(nameof(IsLoggedIn)); //refresh page
        }

        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
