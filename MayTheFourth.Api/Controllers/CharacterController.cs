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
      var response = dbContext.Characters.Include(ev => ev.Planet).Select(character => new
      {
         Name = character.Name,
         Height = character.Height,
         Weight = character.Weight,
         Planet = new
         {
            Id = character.Planet.Id,
            Name = character.Planet.Name
         }
      }).ToList();
      
      return Ok(response);
   }
}