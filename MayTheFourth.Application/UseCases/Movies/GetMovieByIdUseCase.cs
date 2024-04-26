using MayTheFourth.Communication.Responses;
using MayTheFourth.Exceptions;
using MayTheFourth.Infrastructure;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Application.UseCases.Movies;

public class GetMovieByIdUseCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public ResponseMovieJson Execute(ushort id)
    {
        var movie = _dbContext.Movies.Include(m => m.Characters)
            .Include(m => m.Planets)
            .Include(m => m.Vehicles)
            .Include(m => m.Starships)
            .FirstOrDefault(s => s.Id.Equals(id));

        if (movie is null)
            throw new NotFoundException("An movie with this id dont exist.");

        return new ResponseMovieJson
        {
            Id = movie.Id,
            Title = movie.Title,
            Episode = movie.Episode,
            OpeningCrawl = movie.OpeningCrawl,
            Director = movie.Director,
            Producer = movie.Producer,
            ReleaseDate = movie.ReleaseDate,
            Characters = movie.Characters.Select(character => new ResponseCharacterSimplifiedJson
                { Id = character.Id, Name = character.Name }).ToList(),
            Planets = movie.Planets.Select(planet => new ResponsePlanetSimplifiedJson
                { Id = planet.Id, Name = planet.Name }).ToList(),
            Vehicles = movie.Vehicles.Select(vehicle => new ResponseVehicleSimplifiedJson
                { Id = vehicle.Id, Name = vehicle.Name }).ToList(),
            Starships = movie.Starships.Select(starship => new ResponseStarshpSimplifiedJson
                { Id = starship.Id, Name = starship.Name }).ToList()
        };
    }
}