using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RCL
{
    public class SharedPreferences
    {
        public required string Id { get; set; }
        public required bool IsAdmin { get; set; }
        public required bool IsAndroid { get; set; } = false;
    }
}
