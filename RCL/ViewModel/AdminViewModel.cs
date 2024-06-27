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
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace RCL
{
    public class AdminViewModel : INotifyPropertyChanged
    {
        private readonly ApplicationDbContext _dbContext;
        private readonly LocalDb _db;
        private readonly SharedPreferences _sharedPreferences;
        private readonly NavigationManager _navigationManager;
        private List<User> _data;
        private string _message;

        public event PropertyChangedEventHandler? PropertyChanged;

        public AdminViewModel(ApplicationDbContext dbContext, LocalDb db, SharedPreferences sharedPreferences, NavigationManager navigationManager)
        {
            _dbContext = dbContext;
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
            if (_sharedPreferences.IsAndroid)
            {
                Data = await _db.Users.ToListAsync();
            }
            else
            {
                Data = await _dbContext.Users.ToListAsync();
            }
        }

        public async Task DeleteUser(string username)
        {
            User user;
            if (_sharedPreferences.IsAndroid)
            {
                user = await _db.GetProfileDataAsync(username);
            } else
            {
                user = await _dbContext.GetProfileDataAsync(username);
            }
            if (user == null)
            {
                Message = $"User '{username}' not found.";
                return;
            }
            if (user.Username == _sharedPreferences.Id)
            {
                Message = "You cannot delete yourself!";
                return;
            }
            if (user.isAdmin == "yes")
            {
                Message = "You cannot delete an admin!";
                return;
            }
            if (_sharedPreferences.IsAndroid)
            {
                _db.Users.Remove(user);
                await _db.SaveChangesAsync();
            } else
            {
                _dbContext.Users.Remove(user);
                await _dbContext.SaveChangesAsync();
            }
            Message = $"User '{username}' deleted successfully.";
            await LoadProfileDataAsync(); //refresh data
        }

        public async Task AdminUser(string username)
        {
            User user;
            if (_sharedPreferences.IsAndroid)
            {
                user = await _db.GetProfileDataAsync(username);
            } else
            {
                user = await _dbContext.GetProfileDataAsync(username);
            }
            if (user == null)
            {
                Message = $"User '{username}' not found.";
                return;
            }
            if (user.Username == _sharedPreferences.Id)
            {
                Message = "You are already an admin!";
                return;
            }
            user.isAdmin = "yes";
            if (_sharedPreferences.IsAndroid)
            {
                _db.Users.Update(user);
                await _db.SaveChangesAsync();
            } else
            {
                _dbContext.Users.Update(user);
                await _dbContext.SaveChangesAsync();
            }
            Message = $"User '{username}' has been promoted successfully.";
            await LoadProfileDataAsync(); //refresh data
        }

        public void SignIn()
        {
            _navigationManager.NavigateTo("/");
        }

        protected void OnPropertyChanged([CallerMemberName] string? propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
