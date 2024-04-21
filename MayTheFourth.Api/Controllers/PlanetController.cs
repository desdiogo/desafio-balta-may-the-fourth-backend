using MayTheFourth.Application.UseCases.Planets;
using MayTheFourth.Communication.Responses;
using Microsoft.AspNetCore.Mvc;

namespace MayTheFourth.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class PlanetController : ControllerBase
{
    [HttpGet]
    [ProducesResponseType(typeof(ResponseAllPlanetsJson), StatusCodes.Status200OK)]
    public IActionResult ListAllPlanets()
    {
        var useCase = new GetAllPlanetsUseCase();
        var response = useCase.Execute();
    
        return Ok(response);
    }
    
    [HttpGet]
    [Route("{id}")]
    [ProducesResponseType(typeof(ResponsePlanetJson), StatusCodes.Status200OK)]
    [ProducesResponseType(typeof(ResponseErrorJson), StatusCodes.Status404NotFound)]
    public IActionResult ListPlanetById([FromRoute] ushort id)
    {
        var useCase = new GetPlanetByIdUseCase();
        var response = useCase.Execute(id);

        return Ok(response);
    }
}