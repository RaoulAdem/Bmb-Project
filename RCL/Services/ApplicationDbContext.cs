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
            if (PlatformCheck.IsAndroid())
            {
                return "server=10.0.2.2;port=3306;database=bmb_app;user=root";
            }
            return "server=localhost;port=3306;database=bmb_app;user=root";
        }

        public async Task<User> GetProfileDataAsync(string username)
        {
            return await Users.FirstOrDefaultAsync(u => u.Username == username);
        }
    }
}
