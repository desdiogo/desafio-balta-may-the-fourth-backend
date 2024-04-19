using MayTheFourth.Infrastructure;
using Microsoft.AspNetCore.Mvc;

namespace MayTheFourth.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class MovieController : ControllerBase
{
   [HttpGet]
   public IActionResult ListMovies()
   {
      var dbContext = new MayTheFourthDbContext();
      var response = dbContext.Movies.ToList();
      
      return Ok(response);
   }
}