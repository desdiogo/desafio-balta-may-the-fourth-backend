﻿namespace MayTheFourth.Communication.Responses;

public class ResponseAllCharactersJson
{
    public string Name { get; set; } = string.Empty;
    public string Height { get; set; }
    public string Weight { get; set; } = string.Empty;
    public string HairColor { get; set; } = string.Empty;
    public string SkinColor { get; set; } = string.Empty;
    public string EyeColor { get; set; } = string.Empty;
    public string BirthYear { get; set; } = string.Empty;
    public string Gender { get; set; } = string.Empty;
    public ResponseSimplifiedJson Planet  { get; set; }
    public IEnumerable<ResponseMovieJson> Movies { get; set; } = [];
}