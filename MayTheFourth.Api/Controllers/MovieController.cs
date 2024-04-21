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
    
    [HttpGet]
    [Route("{id}")]
    [ProducesResponseType(typeof(ResponseMovieJson), StatusCodes.Status200OK)]
    [ProducesResponseType(typeof(ResponseErrorJson), StatusCodes.Status404NotFound)]
    public IActionResult ListMovieById([FromRoute] ushort id)
    {
        var useCase = new GetMovieByIdUseCase();
        var response = useCase.Execute(id);

        return Ok(response);
    }
}