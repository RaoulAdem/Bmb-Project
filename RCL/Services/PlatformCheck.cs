using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;

namespace RCL
{
    public class PlatformCheck
    {
        public static bool IsAndroid()
        {
            if (DeviceInfo.Platform == DevicePlatform.Android)
            {
                return true;
            }
            return false;
        }
    }
}