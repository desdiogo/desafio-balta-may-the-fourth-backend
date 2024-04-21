using MayTheFourth.Application.UseCases.Vehicles;
using MayTheFourth.Communication.Responses;
using Microsoft.AspNetCore.Mvc;

namespace MayTheFourth.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class VehicleController : ControllerBase
{
    [HttpGet]
    [ProducesResponseType(typeof(ResponseAllVehiclesJson), StatusCodes.Status200OK)]
    public IActionResult ListAllVehicles()
    {
        var useCase = new GetAllVehiclesUseCase();
        var response = useCase.Execute();
    
        return Ok(response);
    }
    
    [HttpGet]
    [Route("{id}")]
    [ProducesResponseType(typeof(ResponseVehicleJson), StatusCodes.Status200OK)]
    [ProducesResponseType(typeof(ResponseErrorJson), StatusCodes.Status404NotFound)]
    public IActionResult ListVehicleById([FromRoute] ushort id)
    {
        var useCase = new GetVehicleByIdUseCase();
        var response = useCase.Execute(id);

        return Ok(response);
    }
}