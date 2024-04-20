﻿namespace MayTheFourth.Infrastructure.Entities;

public class Vehicle
{
    public ushort Id { get; set; }
    public string Name { get; set; } = string.Empty;
    public string Model { get; set; }
    public string Manufacturer { get; set; } = string.Empty;
    public string CostInCredits { get; set; } = string.Empty;
    public string Length { get; set; } = string.Empty;
    public string MaxSpeed { get; set; } = string.Empty;
    public string Crew { get; set; } = string.Empty;
    public string Passengers { get; set; } = string.Empty;
    public string CargoCapacity { get; set; } = string.Empty;
    public string Consumables { get; set; } = string.Empty;
    public string Class { get; set; } = string.Empty;
    public IEnumerable<Movie> Movies { get; } = [];
}