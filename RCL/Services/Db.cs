using MySqlConnector;
using RCL.Components.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;

namespace RCL
{
    public class Db
    {
        //localhost
        private readonly string ConnectionString = "server=localhost;port=3306;database=bmb_app;user=root";
        //for android devices, it "should be 10.0.2.2"
        //private readonly string AndroidConnectionString = "server=10.0.2.2;port=3306;database=bmb_app;user=root";

        //method to get the ConnectionString depending on the platform the user is
        public string GetConnection()
        {
            return ConnectionString;
        }

        //method to fetch all the data from the Database
        public async Task<List<User>> GetDataAsync()
        {
            var result = new List<User>();
            var connectionString = GetConnection();

            using (var conn = new MySqlConnection(connectionString))
            {
                await conn.OpenAsync();
                using (var cmd = new MySqlCommand("SELECT * FROM users", conn))
                {
                    using (var reader = await cmd.ExecuteReaderAsync())
                    {
                        while (await reader.ReadAsync())
                        {
                            result.Add(new User
                            {
                                Username = reader["Username"].ToString(),
                                Password = reader["Password"].ToString(),
                                Email = reader["Email"].ToString(),
                                isAdmin = reader["IsAdmin"].ToString(),
                                Profile = reader["Profile"].ToString()
                            });
                        }
                    }
                }
            }
            return result;
        }

        //method to fetch data for a specific user from the Database
        public async Task<User> GetProfileDataAsync(string id)
        {
            var result = new User();
            var connectionString = GetConnection();

            using (var conn = new MySqlConnection(connectionString))
            {
                await conn.OpenAsync();
                using (var cmd = new MySqlCommand("SELECT * FROM users WHERE Username=@username", conn))
                {
                    cmd.Parameters.AddWithValue("@username", id);
                    using (var reader = await cmd.ExecuteReaderAsync())
                    {
                        if (await reader.ReadAsync())
                        {
                            result.Email = reader["Email"].ToString();
                            result.isAdmin = reader["IsAdmin"].ToString();
                            result.Profile = reader["Profile"].ToString();
                        }
                    }
                }
                await conn.CloseAsync();
            }
            return result;
        }
    }
}
