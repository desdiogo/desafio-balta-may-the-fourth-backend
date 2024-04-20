namespace MayTheFourth.Infrastructure.Entities;

public class Movie
{
    public ushort Id { get; set; }
    public string Title { get; set; } = string.Empty;
    public ushort Episode { get; set; }
    public string OpeningCrawl { get; set; } = string.Empty;
    public string Director { get; set; } = string.Empty;
    public string Producer { get; set; } = string.Empty;
    public DateOnly ReleaseDate { get; set; }
    public IEnumerable<Character> Characters { get; } = [];
    public IEnumerable<Planet> Planets { get; } = [];
}