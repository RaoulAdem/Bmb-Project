using Microsoft.Extensions.Logging;
using RCL;
using System;

namespace Hybrid
{
    public static class MauiProgram
    {
        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                });

            builder.Services.AddMauiBlazorWebView();

            builder.Services.AddSingleton<Db>();
            builder.Services.AddSingleton<Auth>();
            builder.Services.AddSingleton<SharedPreferences>();
            builder.Services.AddSingleton<PlatformCheck>();

#if DEBUG
            builder.Services.AddBlazorWebViewDeveloperTools();
    		builder.Logging.AddDebug();
#endif
            //initialize the database
            var app = builder.Build();
            using (var scope = app.Services.CreateScope())
            {
                var context = scope.ServiceProvider.GetRequiredService<DbLocal>();
                DbLocal.Initialize(context);
            }

            return app;
        }
    }
}
