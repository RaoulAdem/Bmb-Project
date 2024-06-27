using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Xamarin.Essentials;

namespace RCL
{
    public class LocalDb : DbContext
    {
        public DbSet<User> Users { get; set; }

        public LocalDb(DbContextOptions<LocalDb> options)
            : base(options)
        {
        }

        public static void Initialize(LocalDb context, bool initialize = true)
        {
            //if web, skip
            if (!initialize)
            {
                return;
            }
            //if exists, stop
            if (context.Database.CanConnect())
            {
                return;
            }
            context.Database.EnsureCreated();
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
