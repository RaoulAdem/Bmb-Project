using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RCL
{
    public class ApplicationDbContext : DbContext
    {
        public DbSet<User> Users { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            var connectionString = GetConnectionString();
            optionsBuilder.UseMySql(connectionString, ServerVersion.AutoDetect(connectionString));
        }

        private string GetConnectionString()
        {
            return "server=localhost;port=3306;database=bmb_app;user=root";
        }

        //check if user exist using 'username' & 'password'
        public async Task<User> GetUserAsync(string username, string password)
        {
            return await Users.FirstOrDefaultAsync(u => u.Username == username.ToLower() && u.Password == password);
        }

        //get all the information of user using 'username'
        public async Task<User> GetProfileDataAsync(string username)
        {
            return await Users.FirstOrDefaultAsync(u => u.Username == username.ToLower());
        }
    }
}
