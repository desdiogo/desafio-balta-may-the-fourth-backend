﻿namespace MayTheFourth.Communication.Responses;

public class ResponseStarshipJson
{
    public string Name { get; set; } = string.Empty;
    public string Model { get; set; } = string.Empty;
    public string Manufacturer { get; set; } = string.Empty;
    public string CostInCredits { get; set; } = string.Empty;
    public string Length { get; set; } = string.Empty;
    public string MaxSpeed { get; set; } = string.Empty;
    public string Crew { get; set; } = string.Empty;
    public string Passengers { get; set; } = string.Empty;
    public string CargoCapacity { get; set; } = string.Empty;
    public string HyperdriveRating { get; set; } = string.Empty;
    public string Mglt { get; set; } = string.Empty;
    public string Consumables { get; set; } = string.Empty;
    public string Class { get; set; } = string.Empty;
    public IEnumerable<ResponseMovieSimplifiedJson> Movies { get; set; } = [];
}