using MayTheFourth.Application.UseCases.Movies;
using MayTheFourth.Communication.Responses;
using MayTheFourth.Infrastructure.Caching;
using Microsoft.AspNetCore.Mvc;

namespace MayTheFourth.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class MovieController(ICachingService cache) : ControllerBase
{
    [HttpGet]
    [ProducesResponseType(typeof(ResponseAllMoviesJson), StatusCodes.Status200OK)]
    public async Task<IActionResult> ListAllMovies()
    {

        var useCase = new GetAllMoviesUseCase(cache);
        var response = await useCase.Execute();
        
        return Ok(response);
    }
    
    [HttpGet]
    [Route("{id}")]
    [ProducesResponseType(typeof(ResponseMovieJson), StatusCodes.Status200OK)]
    [ProducesResponseType(typeof(ResponseErrorJson), StatusCodes.Status404NotFound)]
    public async Task<IActionResult> ListMovieById([FromRoute] ushort id)
    {
        var useCase = new GetMovieByIdUseCase(cache);
        var response = await useCase.Execute(id);

        return Ok(response);
    }
}