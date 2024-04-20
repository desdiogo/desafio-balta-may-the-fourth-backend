using MayTheFourth.Infrastructure;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class MovieController : ControllerBase
{
    [HttpGet]
    public IActionResult ListMovies()
    {
        var dbContext = new MayTheFourthDbContext();
        var response = dbContext.Movies
            .Select(movie =>
                new
                {
                    Id = movie.Id,
                    Characters = movie.Characters.Select(character => new { Name = character.Name }),
                    Planets = movie.Planets.Select(planet => new { Name = planet.Name }),
                    Vehicles = movie.Vehicles.Select(planet => new { Name = planet.Name }),
                    Starships = movie.Starships.Select(planet => new { Name = planet.Name })
                }).ToList();

        return Ok(response);
    }
}