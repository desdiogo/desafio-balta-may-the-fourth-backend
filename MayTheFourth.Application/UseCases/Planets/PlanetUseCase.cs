using MayTheFourth.Communication.Responses;
using MayTheFourth.Infrastructure.Entities;

namespace MayTheFourth.Application.UseCases.Planets;

public class PlanetUseCase: UseCase
{
    private protected static ResponsePlanetJson GetResponsePlanetJson(Planet planet)
    {
        return new ResponsePlanetJson
        {
            Id = planet.Id,
            Name = planet.Name,
            RotationPeriod = planet.RotationPeriod,
            OrbitalPeriod = planet.OrbitalPeriod,
            Diameter = planet.Diameter,
            Climate = planet.Climate,
            Gravity = planet.Gravity,
            Terrain = planet.Terrain,
            SurfaceWater = planet.SurfaceWater,
            Population = planet.Population,
            Characters = planet.Characters.Select(character => new ResponseCharacterSimplifiedJson
                { Id = character.Id, Name = character.Name }).ToList(),
            Movies = planet.Movies.Select(movie => new ResponseMovieSimplifiedJson()
                { Id = movie.Id, Title = movie.Title }).ToList()
        };
    }
}