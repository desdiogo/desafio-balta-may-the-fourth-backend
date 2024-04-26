using MayTheFourth.Api.Filters;
using MayTheFourth.Api.Middlewares;
using MayTheFourth.Infrastructure.Caching;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddControllers();

builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddMvc(options => options.Filters.Add(typeof(ExceptionFilter)));

builder.Services.Configure<RouteOptions>(options => { options.LowercaseUrls = true; });

builder.Services.AddScoped<ICachingService, CachingService>();
builder.Services.AddStackExchangeRedisCache(options =>
{
    options.InstanceName = "api";
    options.Configuration = "localhost:6379";
});

var app = builder.Build();

app.UseSwagger();
app.UseSwaggerUI(options => options.DisplayRequestDuration());

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();
app.MapGet("/", async context => await Task.Run(() =>
    context.Response.Redirect("/swagger/index.html")));

app.UseMiddleware(typeof(NotFoundMiddleware));

app.Run();