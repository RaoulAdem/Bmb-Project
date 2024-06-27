using Microsoft.AspNetCore.Components;
using Microsoft.EntityFrameworkCore;
using MySqlConnector;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;

namespace RCL
{
    public class RegisterViewModel : INotifyPropertyChanged
    {
        private readonly ApplicationDbContext _dbContext;
        private readonly LocalDb _db;
        private readonly SharedPreferences _sharedPreferences;
        private readonly NavigationManager _navigationManager;
        private User _data;
        private bool _isAdmin;
        private string _message;
        private string _toggleButtonMessage;

        public event PropertyChangedEventHandler? PropertyChanged;

        public RegisterViewModel(ApplicationDbContext dbContext, LocalDb db, SharedPreferences sharedPreferences, NavigationManager navigationManager)
        {
            _dbContext = dbContext;
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
            if (!Auth.Check(username: _data.Username, password: _data.Password, email: _data.Email, confpassword: _data.Password)) //ConfirmPassword removed tmp
            {
                _message = "Invalid input.";
                return;
            }
            try
            {
                User existingUser;
                if (DeviceInfo.Platform == DevicePlatform.Android)
                {
                    existingUser = await _db.GetProfileDataAsync(_data.Username);
                } else
                {
                    existingUser = await _dbContext.GetProfileDataAsync(_data.Username);
                }
                if (existingUser != null)
                {
                    _message = "Username already exists. Please choose a different username.";
                    return;
                }
                var newUser = new User
                {
                    Username = _data.Username.ToLower(),
                    Password = _data.Password,
                    Email = _data.Email,
                    isAdmin = _isAdmin ? "pending" : "no",
                    Profile = string.Empty
                };
                if (_sharedPreferences.IsAndroid)
                {
                    _db.Users.Add(newUser);
                    await _db.SaveChangesAsync();
                } else
                {
                    _dbContext.Users.Add(newUser);
                    await _dbContext.SaveChangesAsync();
                }
                if (_isAdmin)
                {
                    _message = "Registration successful! A request has been sent to the admins. Please sign in to continue.";
                }
                else
                {
                    _message = "Registration successful! Please sign in to continue.";
                }
            }
            catch (Exception ex)
            {
                _message = $"Registration failed: {ex.Message}";
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

        protected void OnPropertyChanged([CallerMemberName] string? propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
