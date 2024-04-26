using MayTheFourth.Communication.Responses;
using MayTheFourth.Infrastructure;

namespace MayTheFourth.Application.UseCases.Movies;

public class GetAllMoviesUseCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public ResponseAllMoviesJson Execute()
    {
        var movies = _dbContext.Movies;

        return new ResponseAllMoviesJson
        {
            Movies = movies.Select(movie =>
                new ResponseMovieJson()
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
                }).ToList()
        };
    }
}