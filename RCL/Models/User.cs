using System.ComponentModel.DataAnnotations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.InteropServices;

namespace RCL
{
    public class User
    {
        [Key]
        public string? Username { get; set; }
        public string? Password { get; set; }
        //public string? ConfirmPassword { get; set; }
        public string? Email { get; set; }
        public string? isAdmin { get; set; }
        public string? Profile { get; set; }
    }
}
