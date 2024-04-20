using MayTheFourth.Communication.Response;
using MayTheFourth.Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class MovieController : ControllerBase
{
    [HttpGet]
    [ProducesResponseType(typeof(List<ResponseAllMoviesJson>), StatusCodes.Status200OK)]
    public IActionResult ListAllMovies()
    {
        var dbContext = new MayTheFourthDbContext();
        var response = dbContext.Movies
            .Select(movie =>
                new ResponseAllMoviesJson()
                {
                    Title = movie.Title,
                    Episode = movie.Episode,
                    OpeningCrawl = movie.OpeningCrawl,
                    Director = movie.Director,
                    Producer = movie.Producer,
                    ReleaseDate = movie.ReleaseDate,
                    Characters = movie.Characters.Select(character => new ResponseGenericJson { Id = character.Id, Name = character.Name }),
                    Planets = movie.Planets.Select(planet => new ResponseGenericJson { Id = planet.Id, Name = planet.Name }),
                    Vehicles = movie.Vehicles.Select(vehicle => new ResponseGenericJson { Id = vehicle.Id, Name = vehicle.Name }),
                    Starships = movie.Starships.Select(starship => new ResponseGenericJson { Id = starship.Id,Name = starship.Name })
                }).ToList();

        return Ok(response);
    }
}