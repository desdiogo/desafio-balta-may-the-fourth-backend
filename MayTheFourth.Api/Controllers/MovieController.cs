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
      var response = dbContext.Movies.Include(ev => ev.Characters).Select(movie =>
      new {
         Characters = movie.Characters.Select(character => new {Name = character.Name}).ToList()
      }).ToList();
      
      return Ok(response);
   }
}