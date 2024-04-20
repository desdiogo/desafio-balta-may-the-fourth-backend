using MayTheFourth.Application.UseCases.Movies;
using MayTheFourth.Communication.Responses;
using Microsoft.AspNetCore.Mvc;

namespace MayTheFourth.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class MovieController : ControllerBase
{
    [HttpGet]
    [ProducesResponseType(typeof(ResponseAllMoviesJson), StatusCodes.Status200OK)]
    public IActionResult ListAllMovies()
    {

        var useCase = new GetAllMoviesUseCase();
        var response = useCase.Execute();
        
        return Ok(response);
    }
}