using MayTheFourth.Infrastructure.Entities;

namespace MayTheFourth.Communication.Response;

public class ResponseAllCharacterJson
{
    public string Name { get; set; } = string.Empty;
    public string Height { get; set; }
    public string Weight { get; set; } = string.Empty;
    public string HairColor { get; set; } = string.Empty;
    public string SkinColor { get; set; } = string.Empty;
    public string EyeColor { get; set; } = string.Empty;
    public string BirthYear { get; set; } = string.Empty;
    public string Gender { get; set; } = string.Empty;
    public ResponseGenericJson Planet  { get; set; }
    public IEnumerable<ResponseMovieJson> Movies { get; set; } = [];
}