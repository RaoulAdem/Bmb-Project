using Blazor.Components;
using Microsoft.EntityFrameworkCore;
using RCL;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddRazorComponents()
    .AddInteractiveServerComponents();
builder.Services.AddSingleton<RCL.ApplicationDbContext>();
builder.Services.AddSingleton<RCL.Auth>();
builder.Services.AddSingleton<RCL.SharedPreferences>();
builder.Services.AddDbContext<LocalDb>(options =>
    options.UseSqlite($"Data Source=nothing.db"));

var app = builder.Build();

//initialize the local database
using (var scope = app.Services.CreateScope())
{
    var context = scope.ServiceProvider.GetRequiredService<LocalDb>();
    LocalDb.Initialize(context, false); //'false' to not initialize it
}

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error", createScopeForErrors: true);
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();

app.UseStaticFiles();
app.UseAntiforgery();

app.MapRazorComponents<App>()
    .AddInteractiveServerRenderMode()
    .AddAdditionalAssemblies(typeof(RCL._Imports).Assembly);

app.Run();
