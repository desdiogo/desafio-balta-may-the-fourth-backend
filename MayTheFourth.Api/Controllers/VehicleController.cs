using MayTheFourth.Application.UseCases.Vehicles;
using MayTheFourth.Communication.Responses;
using MayTheFourth.Infrastructure.Caching;
using Microsoft.AspNetCore.Mvc;

namespace MayTheFourth.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class VehicleController(ICachingService cache) : ControllerBase
{
    [HttpGet]
    [ProducesResponseType(typeof(ResponseAllVehiclesJson), StatusCodes.Status200OK)]
    public IActionResult ListAllVehicles()
    {
        var useCase = new GetAllVehiclesUseCase(cache);
        var response = useCase.Execute();
    
        return Ok(response);
    }
    
    [HttpGet]
    [Route("{id}")]
    [ProducesResponseType(typeof(ResponseVehicleJson), StatusCodes.Status200OK)]
    [ProducesResponseType(typeof(ResponseErrorJson), StatusCodes.Status404NotFound)]
    public IActionResult ListVehicleById([FromRoute] ushort id)
    {
        var useCase = new GetVehicleByIdUseCase(cache);
        var response = useCase.Execute(id);

        return Ok(response);
    }
}