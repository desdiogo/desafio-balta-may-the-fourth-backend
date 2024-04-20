﻿using MayTheFourth.Infrastructure.Entities;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Infrastructure;

public class MayTheFourthDbContext: DbContext
{
    public DbSet<Character> Characters { get; set; }
    public DbSet<Movie> Movies { get; set; }
    public DbSet<Planet> Planets { get; set; }
    public DbSet<Starship> Starships { get; set; }
    public DbSet<Vehicle> Vehicles { get; set; }
    
    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseNpgsql("Host=127.0.0.1:5432;Database=MayTheFourth;Username=docker;Password=docker");;
    }
    
    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Character>()
            .HasOne(e => e.Planet)
            .WithMany(e => e.Characters)
            .HasForeignKey(e => e.PlanetId)
            .IsRequired();
        
        modelBuilder.Entity<Movie>()
            .HasMany(e => e.Characters)
            .WithMany(e => e.Movies);
        
        modelBuilder.Entity<Movie>()
            .HasMany(e => e.Planets)
            .WithMany(e => e.Movies);
        
        modelBuilder.Entity<Movie>()
            .HasMany(e => e.Vehicles)
            .WithMany(e => e.Movies);
        
        modelBuilder.Entity<Movie>()
            .HasMany(e => e.Starships)
            .WithMany(e => e.Movies);
    }
}