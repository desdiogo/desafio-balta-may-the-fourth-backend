namespace MayTheFourth.Infrastructure.Entities;

public class Character
{
    public ushort Id { get; set; }
    public string Name { get; set; } = string.Empty;
    public string Height { get; set; } = string.Empty;
    public string Weight { get; set; } = string.Empty;
    public string HairColor { get; set; } = string.Empty;
    public string SkinColor { get; set; } = string.Empty;
    public string EyeColor { get; set; } = string.Empty;
    public string BirthYear { get; set; } = string.Empty;
    public string Gender { get; set; } = string.Empty;
    public ushort PlanetId { get; set; }
    public Planet Planet  { get; set; }
    public List<Movie> Movies { get; set; }
}