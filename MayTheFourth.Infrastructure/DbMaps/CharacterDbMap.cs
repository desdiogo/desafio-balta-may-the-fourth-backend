using MayTheFourth.Infrastructure.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace MayTheFourth.Infrastructure.DbMaps;

public class CharecterDbMap : IEntityTypeConfiguration<Character>
{
    public void Configure(EntityTypeBuilder<Character> builder)
    {
        builder.Property(x => x.Name).HasColumnType("varchar(255)").IsRequired();
        builder.Property(x => x.Height).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.Weight).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.HairColor).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.SkinColor).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.EyeColor).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.BirthYear).HasColumnType("varchar(50)").IsRequired();
        builder.Property(x => x.Gender).HasColumnType("varchar(50)").IsRequired();
    }
}