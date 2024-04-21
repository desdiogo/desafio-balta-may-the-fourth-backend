using MayTheFourth.Communication.Responses;
using MayTheFourth.Exceptions;
using MayTheFourth.Infrastructure;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Application.UseCases.Planets;

public class GetPlanetByIdUseCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public ResponsePlanetJson Execute(ushort id)
    {
        var planet = _dbContext.Planets
            .Include(p => p.Movies)
            .Include(p => p.Characters)
            .FirstOrDefault(s => s.Id.Equals(id));

        if (planet is null)
            throw new NotFoundException("An planet with this id dont exist.");

        return new ResponsePlanetJson
        {
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