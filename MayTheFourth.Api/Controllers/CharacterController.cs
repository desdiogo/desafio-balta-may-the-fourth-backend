using MayTheFourth.Communication.Response;
using MayTheFourth.Infrastructure;
using MayTheFourth.Infrastructure.Entities;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class CharacterController : ControllerBase
{
    [HttpGet]
    [ProducesResponseType(typeof(List<ResponseAllCharacterJson>), StatusCodes.Status200OK)]
    public IActionResult ListAllMovies()
    {
        var dbContext = new MayTheFourthDbContext();
        var response = dbContext.Characters
            .Select(character =>
                new ResponseAllCharacterJson()
                {
                    Name = character.Name,
                    Height = character.Height,
                    Weight = character.Weight,
                    HairColor = character.HairColor,
                    SkinColor = character.SkinColor,
                    EyeColor = character.EyeColor,
                    BirthYear = character.BirthYear,
                    Gender =  character.Gender,
                    Planet =  new ResponseGenericJson
                    {
                        Id = character.Planet.Id,
                        Name = character.Planet.Name
                    },
                    Movies = character.Movies.Select(movie => new ResponseMovieJson { Id = movie.Id,Title = movie.Title })
                }).ToList();

        return Ok(response);
    }
}