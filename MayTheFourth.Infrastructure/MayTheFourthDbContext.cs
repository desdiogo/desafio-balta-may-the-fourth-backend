using MayTheFourth.Infrastructure.Entities;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Infrastructure;

public class MayTheFourthDbContext: DbContext
{
    public DbSet<Movie> Movies { get; set; }
    public DbSet<Planet> Planets { get; set; }
    
    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseNpgsql("Host=127.0.0.1:5432;Database=MayTheFourth;Username=docker;Password=docker");;
    }
}