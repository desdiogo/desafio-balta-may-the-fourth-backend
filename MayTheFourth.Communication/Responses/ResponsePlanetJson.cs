namespace MayTheFourth.Communication.Responses;

public class ResponsePlanetJson
{
    public ushort Id { get; set; }
    public string Name { get; set; } = string.Empty;
    public string RotationPeriod { get; set; } = string.Empty;
    public string OrbitalPeriod { get; set; } = string.Empty;
    public string Diameter { get; set; } = string.Empty;
    public string Climate { get; set; } = string.Empty;
    public string Gravity { get; set; } = string.Empty;
    public string Terrain { get; set; } = string.Empty;
    public string SurfaceWater { get; set; } = string.Empty;
    public string Population { get; set; } = string.Empty;
    public List<ResponseCharacterSimplifiedJson> Characters { get; set; }
    public List<ResponseMovieSimplifiedJson> Movies { get; set; }
}