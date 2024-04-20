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
}