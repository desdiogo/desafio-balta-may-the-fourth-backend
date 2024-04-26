using MayTheFourth.Infrastructure.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace MayTheFourth.Infrastructure.DbMaps;

public class VehicleDbMap : IEntityTypeConfiguration<Vehicle>
{
    public void Configure(EntityTypeBuilder<Vehicle> builder)
    {
        builder.Property(x => x.Name).HasColumnType("varchar(255)").IsRequired();
        builder.Property(x => x.Model).HasColumnType("varchar(255)").IsRequired();
        builder.Property(x => x.Manufacturer).HasColumnType("varchar(255)").IsRequired();
        builder.Property(x => x.CostInCredits).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.Length).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.MaxSpeed).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.Crew).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.Passengers).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.CargoCapacity).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.Consumables).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.Class).HasColumnType("varchar(50)").IsRequired();
    }
}