namespace MayTheFourth.Infrastructure.Entities;

public class Movie
{
    public ushort Id { get; set; }
    public string Title { get; set; } = string.Empty;
    public ushort Episode { get; set; }
    public string OpeningCrawl { get; set; } = string.Empty;
    public string Director { get; set; } = string.Empty;
    public string Producer { get; set; } = string.Empty;
    public DateTime ReleaseDate { get; set; }
    public List<Character> Characters { get; set; }
    public List<Planet> Planets { get; set; }
    public List<Vehicle> Vehicles { get; set; }
    public List<Starship> Starships { get; set; }
}