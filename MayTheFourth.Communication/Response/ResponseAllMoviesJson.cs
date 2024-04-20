using MayTheFourth.Infrastructure.Entities;

namespace MayTheFourth.Communication.Response;

public class ResponseAllMoviesJson
{
    public string Title { get; set; } = string.Empty;
    public ushort Episode { get; set; }
    public string OpeningCrawl { get; set; } = string.Empty;
    public string Director { get; set; } = string.Empty;
    public string Producer { get; set; } = string.Empty;
    public DateTime ReleaseDate { get; set; }
    public IEnumerable<ResponseGenericJson> Characters { get; set; } = [];
    public IEnumerable<ResponseGenericJson> Planets { get; set; } = [];
    public IEnumerable<ResponseGenericJson> Vehicles { get; set; } = [];
    public IEnumerable<ResponseGenericJson> Starships { get; set; } = [];
}