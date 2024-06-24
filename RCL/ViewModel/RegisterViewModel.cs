using Microsoft.AspNetCore.Components;
using MySqlConnector;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace RCL
{
    public class RegisterViewModel : INotifyPropertyChanged
    {
        private readonly Db _db;
        private readonly SharedPreferences _sharedPreferences;
        private readonly NavigationManager _navigationManager;
        private User _data;
        private bool _isAdmin;
        private string _message;
        private string _toggleButtonMessage;

        public event PropertyChangedEventHandler? PropertyChanged;

        public RegisterViewModel(Db db, SharedPreferences sharedPreferences, NavigationManager navigationManager)
        {
            _db = db;
            _sharedPreferences = sharedPreferences;
            _navigationManager = navigationManager;
            _data = new User();
            _isAdmin = false;
            _message = string.Empty;
            _toggleButtonMessage = "You will be registered as a user.";
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
        public bool isAdmin
        {
            get => _isAdmin;
            set
            {
                _isAdmin = value;
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
        public string ToggleButtonMessage
        {
            get => _toggleButtonMessage;
            set
            {
                _toggleButtonMessage = value;
                OnPropertyChanged();
            }
        }

        public bool IsLoggedIn => !string.IsNullOrEmpty(_sharedPreferences.Id);

        public async Task HandleAuth()
        {
            if (!Auth.Check(_data.Username, _data.Password, _data.Email, _data.ConfirmPassword))
            {
                _message = "wrongg";
                return;
            }
            using (var conn = new MySqlConnection(_db.GetConnection()))
            {
                await conn.OpenAsync();
                using (var cmd = new MySqlCommand("INSERT INTO users (Username, Password, Email, IsAdmin) VALUES (@username, @password, @email, @isadmin)", conn))
                {
                    cmd.Parameters.AddWithValue("@username", _data.Username.ToLower());
                    cmd.Parameters.AddWithValue("@password", _data.Password);
                    cmd.Parameters.AddWithValue("@email", _data.Email);
                    if (_isAdmin)
                    {
                        cmd.Parameters.AddWithValue("@isadmin", "pending");
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@isadmin", "no");
                    }
                    var result = await cmd.ExecuteNonQueryAsync();
                    if (result > 0)
                    {
                        if (_isAdmin)
                        {
                            _message = "Registration successful! \nA request has been sent to the admins. \nIn the meantime, please sign in to continue.";
                        }
                        else
                        {
                            _message = "Registration successful! \n Please sign in to continue.";
                        }
                    }
                    else
                    {
                        _message = "Registration failed!";
                    }
                }
                await conn.CloseAsync();
            }
        }

        public void IsAdmin()
        {
            _isAdmin = !_isAdmin;
            if (_isAdmin)
            {
                _toggleButtonMessage = "You will be registered as an admin.";
            }
            else
            {
                _toggleButtonMessage = "You will be registered as a user.";
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
