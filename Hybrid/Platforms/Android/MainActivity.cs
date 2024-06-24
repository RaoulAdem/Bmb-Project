using Android.App;
using Android.Content.PM;
using Android.OS;
using Android.Runtime;
using Android.Widget;
using Microsoft.AspNetCore.Components;
using Microsoft.Maui.Controls.Compatibility.Platform.Android;
using Xamarin.Essentials;

namespace Hybrid
{
    [Activity(Theme = "@style/Maui.SplashTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize | ConfigChanges.Density)]
    public class MainActivity : MauiAppCompatActivity
    {
        private WebViewRenderer webViewRenderer;
        private bool doubleBackToExitPressedOnce = false;
        private Toast? exitToast;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            webViewRenderer = new WebViewRenderer(this);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);
            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }

        public override void OnBackPressed()
        {
            exitToast = Toast.MakeText(this, "ok", ToastLength.Long);
            exitToast.Show();
            //if (doubleBackToExitPressedOnce)
            //{
            //    if (exitToast != null)
            //    {
            //        exitToast.Cancel();
            //    }
            //    base.OnBackPressed();
            //    return;
            //}

            //doubleBackToExitPressedOnce = true;
            //exitToast = Toast.MakeText(this, "Press back again to exit.", ToastLength.Short);
            //exitToast.Show();

            //new Handler(Looper.MainLooper).PostDelayed(() =>
            //{
            //    doubleBackToExitPressedOnce = false;
            //}, 2000); // Reset flag after 2 seconds
        }
    }
}
