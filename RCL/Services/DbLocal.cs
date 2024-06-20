using Microsoft.Data.Sqlite;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;

namespace RCL
{
    public class DbLocal : DbContext
    {
        public DbSet<User> Users { get; set; }

        public DbLocal(DbContextOptions<DbLocal> options)
            : base(options)
        {
        }

        public static void Initialize(DbLocal context)
        {
            //if exists, stop
            if (context.Database.CanConnect())
            {
                return;
            }
            context.Database.EnsureCreated();
        }
    }
}