using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace RCL
{
    public class LocalDb : DbContext
    {
        public DbSet<User> Users { get; set; }

        public LocalDb(DbContextOptions<LocalDb> options)
            : base(options)
        {
        }

        public static void Initialize(LocalDb context)
        {
            //if exists, stop
            if (context.Database.CanConnect())
            {
                return;
            }
            context.Database.EnsureCreated();
        }

        public async Task<User> GetProfileDataAsync(string username)
        {
            return await Users.FirstOrDefaultAsync(u => u.Username == username);
        }
    }
}
