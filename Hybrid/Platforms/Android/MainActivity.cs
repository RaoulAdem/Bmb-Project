using Android.App;
using Android.Content.PM;
using Android.OS;
using Android.Widget;

namespace Hybrid
{
    [Activity(Theme = "@style/Maui.SplashTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize | ConfigChanges.Density)]
    public class MainActivity : MauiAppCompatActivity
    {
        private bool doubleBackToExitPressedOnce = false;
        private Toast? exitToast;

        public override void OnBackPressed()
        {
            if (doubleBackToExitPressedOnce)
            {
                if (exitToast != null)
                {
                    exitToast.Cancel();
                }
                //...
                MoveTaskToBack(true); //move app to the background
                return;
            }

            doubleBackToExitPressedOnce = true;
            exitToast = Toast.MakeText(this, "Press back again to exit.", ToastLength.Short);
            exitToast.Show();

            new Handler(Looper.MainLooper).PostDelayed(() => doubleBackToExitPressedOnce = false, 2000); //2s
        }
    }
}
