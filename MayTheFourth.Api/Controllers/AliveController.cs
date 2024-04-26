using MayTheFourth.Communication.Responses;
using MayTheFourth.Enum;
using Microsoft.AspNetCore.Mvc;

namespace MayTheFourth.Api.Controllers;

[Route("[controller]")]
public class AliveController : ControllerBase
{
    [HttpGet]
    [ProducesResponseType(typeof(ResponseSucessJson), StatusCodes.Status200OK)]
    public IActionResult Alive()
    {
        var response = new ResponseSucessJson(ResponseMessage.IsAlive);

        return Ok(response);
    }
}