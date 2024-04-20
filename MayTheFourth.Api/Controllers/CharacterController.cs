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
   public IActionResult ListCharacters()
   {
      var dbContext = new MayTheFourthDbContext();
      var response = dbContext.Characters.Include(ev => ev.Movies).Select(character => new
      {
         Movies = character.Movies.Select(ev => new
         {
            Title = ev.Title
         })
      }).ToList();
      
      return Ok(response);
   }
}