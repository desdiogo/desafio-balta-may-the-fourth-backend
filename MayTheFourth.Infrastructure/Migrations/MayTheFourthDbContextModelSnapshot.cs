﻿// <auto-generated />
using MayTheFourth.Infrastructure;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

#nullable disable

namespace MayTheFourth.Infrastructure.Migrations
{
    [DbContext(typeof(MayTheFourthDbContext))]
    partial class MayTheFourthDbContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "8.0.4")
                .HasAnnotation("Relational:MaxIdentifierLength", 63);

            NpgsqlModelBuilderExtensions.UseIdentityByDefaultColumns(modelBuilder);

            modelBuilder.Entity("CharacterMovie", b =>
                {
                    b.Property<int>("CharactersId")
                        .HasColumnType("integer");

                    b.Property<int>("MoviesId")
                        .HasColumnType("integer");

                    b.HasKey("CharactersId", "MoviesId");

                    b.HasIndex("MoviesId");

                    b.ToTable("CharacterMovie");
                });

            modelBuilder.Entity("MayTheFourth.Infrastructure.Entities.Character", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<string>("BirthYear")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("EyeColor")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Gender")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("HairColor")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Height")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("varchar(255)");

                    b.Property<int>("PlanetId")
                        .HasColumnType("integer");

                    b.Property<string>("SkinColor")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Weight")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.HasKey("Id");

                    b.HasIndex("PlanetId");

                    b.ToTable("Characters");
                });

            modelBuilder.Entity("MayTheFourth.Infrastructure.Entities.Movie", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<string>("Director")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<int>("Episode")
                        .HasColumnType("int")
                        .HasAnnotation("CheckConstraint", "CK_Episode_MinValue: Episode >= 1");

                    b.Property<string>("OpeningCrawl")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("Producer")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("ReleaseDate")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Title")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.HasKey("Id");

                    b.ToTable("Movies");
                });

            modelBuilder.Entity("MayTheFourth.Infrastructure.Entities.Planet", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<string>("Climate")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Diameter")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Gravity")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("varchar(255)");

                    b.Property<string>("OrbitalPeriod")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Population")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("RotationPeriod")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("SurfaceWater")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Terrain")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.HasKey("Id");

                    b.ToTable("Planets");
                });

            modelBuilder.Entity("MayTheFourth.Infrastructure.Entities.Starship", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<string>("CargoCapacity")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Class")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Consumables")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("CostInCredits")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Crew")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("HyperdriveRating")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Length")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Manufacturer")
                        .IsRequired()
                        .HasColumnType("varchar(255)");

                    b.Property<string>("MaxSpeed")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Mglt")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Model")
                        .IsRequired()
                        .HasColumnType("varchar(255)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("varchar(255)");

                    b.Property<string>("Passengers")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.HasKey("Id");

                    b.ToTable("Starships");
                });

            modelBuilder.Entity("MayTheFourth.Infrastructure.Entities.Vehicle", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<string>("CargoCapacity")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Class")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Consumables")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("CostInCredits")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Crew")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Length")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Manufacturer")
                        .IsRequired()
                        .HasColumnType("varchar(255)");

                    b.Property<string>("MaxSpeed")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.Property<string>("Model")
                        .IsRequired()
                        .HasColumnType("varchar(255)");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("varchar(255)");

                    b.Property<string>("Passengers")
                        .IsRequired()
                        .HasColumnType("varchar(50)");

                    b.HasKey("Id");

                    b.ToTable("Vehicles");
                });

            modelBuilder.Entity("MoviePlanet", b =>
                {
                    b.Property<int>("MoviesId")
                        .HasColumnType("integer");

                    b.Property<int>("PlanetsId")
                        .HasColumnType("integer");

                    b.HasKey("MoviesId", "PlanetsId");

                    b.HasIndex("PlanetsId");

                    b.ToTable("MoviePlanet");
                });

            modelBuilder.Entity("MovieStarship", b =>
                {
                    b.Property<int>("MoviesId")
                        .HasColumnType("integer");

                    b.Property<int>("StarshipsId")
                        .HasColumnType("integer");

                    b.HasKey("MoviesId", "StarshipsId");

                    b.HasIndex("StarshipsId");

                    b.ToTable("MovieStarship");
                });

            modelBuilder.Entity("MovieVehicle", b =>
                {
                    b.Property<int>("MoviesId")
                        .HasColumnType("integer");

                    b.Property<int>("VehiclesId")
                        .HasColumnType("integer");

                    b.HasKey("MoviesId", "VehiclesId");

                    b.HasIndex("VehiclesId");

                    b.ToTable("MovieVehicle");
                });

            modelBuilder.Entity("CharacterMovie", b =>
                {
                    b.HasOne("MayTheFourth.Infrastructure.Entities.Character", null)
                        .WithMany()
                        .HasForeignKey("CharactersId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("MayTheFourth.Infrastructure.Entities.Movie", null)
                        .WithMany()
                        .HasForeignKey("MoviesId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("MayTheFourth.Infrastructure.Entities.Character", b =>
                {
                    b.HasOne("MayTheFourth.Infrastructure.Entities.Planet", "Planet")
                        .WithMany("Characters")
                        .HasForeignKey("PlanetId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Planet");
                });

            modelBuilder.Entity("MoviePlanet", b =>
                {
                    b.HasOne("MayTheFourth.Infrastructure.Entities.Movie", null)
                        .WithMany()
                        .HasForeignKey("MoviesId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("MayTheFourth.Infrastructure.Entities.Planet", null)
                        .WithMany()
                        .HasForeignKey("PlanetsId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("MovieStarship", b =>
                {
                    b.HasOne("MayTheFourth.Infrastructure.Entities.Movie", null)
                        .WithMany()
                        .HasForeignKey("MoviesId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("MayTheFourth.Infrastructure.Entities.Starship", null)
                        .WithMany()
                        .HasForeignKey("StarshipsId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("MovieVehicle", b =>
                {
                    b.HasOne("MayTheFourth.Infrastructure.Entities.Movie", null)
                        .WithMany()
                        .HasForeignKey("MoviesId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("MayTheFourth.Infrastructure.Entities.Vehicle", null)
                        .WithMany()
                        .HasForeignKey("VehiclesId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();
                });

            modelBuilder.Entity("MayTheFourth.Infrastructure.Entities.Planet", b =>
                {
                    b.Navigation("Characters");
                });
#pragma warning restore 612, 618
        }
    }
}
