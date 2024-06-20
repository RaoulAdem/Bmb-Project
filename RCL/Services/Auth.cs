using Microsoft.AspNetCore.Components;
using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace RCL
{
    public class Auth
    {
        public static bool Check(string username, string password, string email, string confpassword)
        {
            List<char> specials = new List<char>() { ' ', '/', '*', '-', '+', '_', '@', '&', '$', '#', '%' };
            //username
            if (string.IsNullOrWhiteSpace(username) || username.Length < 4) return false;
            if (username.Any(c => specials.Contains(c))) return false;

            //password
            if (string.IsNullOrWhiteSpace(password) || password.Length < 6) return false;
            if (password.Any(c => specials.Contains(c))) return false;

            //confirmPassword
            if (password != confpassword) return false;

            //email
            if (!IsValidEmail(email)) return false;

            return true;
        }

        //https://learn.microsoft.com/en-us/dotnet/standard/base-types/how-to-verify-that-strings-are-in-valid-email-format
        public static bool IsValidEmail(string email)
        {
            if (string.IsNullOrWhiteSpace(email))
                return false;

            try
            {
                email = Regex.Replace(email, @"(@)(.+)$", DomainMapper,
                                      RegexOptions.None, TimeSpan.FromMilliseconds(200));
                string DomainMapper(Match match)
                {
                    var idn = new IdnMapping();
                    string domainName = idn.GetAscii(match.Groups[2].Value);
                    return match.Groups[1].Value + domainName;
                }
            }
            catch (RegexMatchTimeoutException)
            {
                return false;
            }
            catch (ArgumentException)
            {
                return false;
            }

            try
            {
                return Regex.IsMatch(email,
                    @"^[^@\s]+@[^@\s]+\.[^@\s]+$",
                    RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250));
            }
            catch (RegexMatchTimeoutException)
            {
                return false;
            }
        }
    }
}
