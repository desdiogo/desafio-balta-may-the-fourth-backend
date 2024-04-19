using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Infrastructure;

public class MayTheFourthDbContext: DbContext
{
    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseNpgsql("Host=127.0.0.1:5432;Database=MayTheFourth;Username=docker;Password=docker");;
    }
}