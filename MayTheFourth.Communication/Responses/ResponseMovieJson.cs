namespace MayTheFourth.Communication.Responses;

public class ResponseMovieJson
{
    public string Title { get; set; } = string.Empty;
    public ushort Episode { get; set; }
    public string OpeningCrawl { get; set; } = string.Empty;
    public string Director { get; set; } = string.Empty;
    public string Producer { get; set; } = string.Empty;
    public DateTime ReleaseDate { get; set; }
    public List<ResponseCharacterSimplifiedJson> Characters { get; set; }
    public List<ResponsePlanetSimplifiedJson> Planets { get; set; }
    public List<ResponseVehicleSimplifiedJson> Vehicles { get; set; }
    public List<ResponseStarshpSimplifiedJson> Starships { get; set; }
}