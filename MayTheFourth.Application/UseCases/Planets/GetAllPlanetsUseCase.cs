using MayTheFourth.Communication.Responses;
using MayTheFourth.Infrastructure;

namespace MayTheFourth.Application.UseCases.Planets;

public class GetAllPlanetsUseCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public ResponseAllPlanetsJson Execute()
    {
        var planets = _dbContext.Planets;
        
        return new ResponseAllPlanetsJson
        {
            Planets = planets.Select(planet =>
            new ResponsePlanetJson{
                Name = planet.Name,
                RotationPeriod = planet.RotationPeriod,
                OrbitalPeriod = planet.OrbitalPeriod,
                Diameter = planet.Diameter,
                Climate = planet.Climate,
                Gravity = planet.Gravity,
                Terrain = planet.Terrain,
                SurfaceWater =  planet.SurfaceWater,
                Population = planet.Population,
                Characters = planet.Characters.Select(character => new ResponseCharacterSimplifiedJson { Id = character.Id, Name = character.Name }),
                Movies = planet.Movies.Select(movie => new ResponseMovieSimplifiedJson() { Id = movie.Id,Title = movie.Title })
            }).ToList()
        };
    }
}