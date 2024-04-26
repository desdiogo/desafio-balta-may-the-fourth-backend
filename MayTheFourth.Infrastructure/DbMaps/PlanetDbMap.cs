using MayTheFourth.Infrastructure.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace MayTheFourth.Infrastructure.DbMaps;

public class PlanetDbMap: IEntityTypeConfiguration<Planet>
{
    public void Configure(EntityTypeBuilder<Planet> builder)
    {
        builder.Property(x => x.Name).HasColumnType("varchar(255)").IsRequired();
        builder.Property(x => x.Climate).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.Diameter).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.Gravity).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.OrbitalPeriod).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.Population).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.RotationPeriod).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.SurfaceWater).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.Terrain).HasColumnType("varchar(50)").IsRequired();
    }
}