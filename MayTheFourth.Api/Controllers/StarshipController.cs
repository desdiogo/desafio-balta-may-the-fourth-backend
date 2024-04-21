using MayTheFourth.Application.UseCases.Starships;
using MayTheFourth.Communication.Responses;
using Microsoft.AspNetCore.Mvc;

namespace MayTheFourth.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class StarshipController : ControllerBase
{
    [HttpGet]
    [ProducesResponseType(typeof(ResponseAllStarshipJson), StatusCodes.Status200OK)]
    public IActionResult ListAllStarships()
    {
        var useCase = new GetAllStarshipsUseCase();
        var response = useCase.Execute();

        return Ok(response);
    }

    [HttpGet]
    [Route("{id}")]
    [ProducesResponseType(typeof(ResponseStarshipJson), StatusCodes.Status200OK)]
    public IActionResult ListStarshipById([FromRoute] ushort id)
    {
        var useCase = new GetStarshipByIdUseCase();
        var response = useCase.Execute(id);

        return Ok(response);
    }
}