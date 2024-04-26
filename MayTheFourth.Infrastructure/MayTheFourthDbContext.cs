using MayTheFourth.Infrastructure.DbMaps;
using MayTheFourth.Infrastructure.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;


namespace MayTheFourth.Infrastructure;

public class MayTheFourthDbContext() : DbContext
{
    public DbSet<Character> Characters { get; set; }
    public DbSet<Movie> Movies { get; set; }
    public DbSet<Planet> Planets { get; set; }
    public DbSet<Starship> Starships { get; set; }
    public DbSet<Vehicle> Vehicles { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        var config = GetConfig();
        optionsBuilder.UseNpgsql(config["ConnectionString"]);
    }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.ApplyConfiguration(new CharecterDbMap());
        modelBuilder.ApplyConfiguration(new MovieDbMap());
        modelBuilder.ApplyConfiguration(new PlanetDbMap());
        modelBuilder.ApplyConfiguration(new StarshipDbMap());
        modelBuilder.ApplyConfiguration(new VehicleDbMap());
    }

    private static IConfigurationRoot GetConfig()
    {
        return new ConfigurationBuilder()
            .AddUserSecrets<MayTheFourthDbContext>()
            .Build();
    }
}