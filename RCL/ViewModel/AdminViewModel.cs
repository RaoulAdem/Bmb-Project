using Microsoft.AspNetCore.Components;
using MySqlConnector;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace RCL
{
    public class AdminViewModel : INotifyPropertyChanged
    {
        private readonly Db _db;
        private readonly SharedPreferences _sharedPreferences;
        private readonly NavigationManager _navigationManager;
        private List<User> _data;
        private string _message;

        public event PropertyChangedEventHandler? PropertyChanged;

        public AdminViewModel(Db db, SharedPreferences sharedPreferences, NavigationManager navigationManager)
        {
            _db = db;
            _sharedPreferences = sharedPreferences;
            _navigationManager = navigationManager;
            _data = new List<User>();
            _message = string.Empty;
        }

        public List<User> Data
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
        public bool IsAdmin => _sharedPreferences.IsAdmin;

        public async Task LoadProfileDataAsync()
        {
            Data = await _db.GetDataAsync();
        }

        public async Task DeleteUser(string username)
        {
            if (username == _sharedPreferences.Id)
            {
                _message = "You cannot delete yourself!";
                return;
            }
            using (var conn = new MySqlConnection(_db.GetConnection()))
            {
                await conn.OpenAsync();
                using (var cmd = new MySqlCommand("SELECT IsAdmin FROM users WHERE Username=@username", conn))
                {
                    cmd.Parameters.AddWithValue("@username", username);
                    var result = await cmd.ExecuteScalarAsync() as string;
                    if (result == "yes")
                    {
                        _message = "You cannot delete an admin!";
                        await conn.CloseAsync();
                        return;
                    }
                }
                using (var cmd = new MySqlCommand("DELETE FROM users WHERE Username=@username", conn))
                {
                    cmd.Parameters.AddWithValue("@username", username);
                    var result = await cmd.ExecuteNonQueryAsync();
                    if (result > 0)
                    {
                        _message = $"User '{username}' deleted successfully.";
                        _data = await _db.GetDataAsync(); //refresh
                    }
                    else
                    {
                        _message = "Something went wrong...";
                    }
                }
                await conn.CloseAsync();
            }
        }

        public async Task AdminUser(string username)
        {
            if (username == _sharedPreferences.Id)
            {
                _message = "You are already an admin!";
                return;
            }
            using (var conn = new MySqlConnection(_db.GetConnection()))
            {
                await conn.OpenAsync();
                using (var cmd = new MySqlCommand("UPDATE users SET IsAdmin='yes' WHERE Username=@username", conn))
                {
                    cmd.Parameters.AddWithValue("@username", username);
                    var result = await cmd.ExecuteNonQueryAsync();
                    if (result > 0)
                    {
                        _message = $"User '{username}' has been promoted successfully.";
                        _data = await _db.GetDataAsync(); //refresh
                    }
                    else
                    {
                        _message = "Something went wrong...";
                    }
                }
                await conn.CloseAsync();
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
