using MayTheFourth.Communication.Response;
using MayTheFourth.Infrastructure;
using MayTheFourth.Infrastructure.Entities;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class PlanetController : ControllerBase
{
    [HttpGet]
    [ProducesResponseType(typeof(List<ResponseAllPlanetsJson>), StatusCodes.Status200OK)]
    public IActionResult ListAllPlanets()
    {
        var dbContext = new MayTheFourthDbContext();
        var response = dbContext.Planets
            .Select(planet =>
                new ResponseAllPlanetsJson()
                {
                    Name = planet.Name,
                    RotationPeriod = planet.RotationPeriod,
                    OrbitalPeriod = planet.OrbitalPeriod,
                    Diameter = planet.Diameter,
                    Climate = planet.Climate,
                    Gravity = planet.Gravity,
                    Terrain = planet.Terrain,
                    SurfaceWater =  planet.SurfaceWater,
                    Population = planet.Population,
                    Characters = planet.Characters.Select(character => new ResponseGenericJson() { Id = character.Id, Name = character.Name }),
                    Movies = planet.Movies.Select(movie => new ResponseMovieJson { Id = movie.Id,Title = movie.Title })
                }).ToList();

        return Ok(response);
    }
}