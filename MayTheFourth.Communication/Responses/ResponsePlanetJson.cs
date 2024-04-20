namespace MayTheFourth.Communication.Responses;

public class ResponsePlanetJson
{
    public string Name { get; set; } = string.Empty;
    public string RotationPeriod { get; set; } = string.Empty;
    public string OrbitalPeriod { get; set; } = string.Empty;
    public string Diameter { get; set; } = string.Empty;
    public string Climate { get; set; } = string.Empty;
    public string Gravity { get; set; } = string.Empty;
    public string Terrain { get; set; } = string.Empty;
    public string SurfaceWater { get; set; } = string.Empty;
    public string Population { get; set; } = string.Empty;
    public IEnumerable<ResponseSimplifiedJson> Characters { get; set; } = [];
    public IEnumerable<ResponseMovieSimplifiedJson> Movies { get; set; } = [];
}