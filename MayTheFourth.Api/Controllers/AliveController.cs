using MayTheFourth.Communication.Responses;
using Microsoft.AspNetCore.Mvc;

namespace MayTheFourth.Api.Controllers;

[Route("[controller]")]
public class AliveController : ControllerBase
{
    [HttpGet]
    public IActionResult Alive()
    {
        var response = new ResponseAliveJson
        {
            Message = "Is alive"
        };
        
        return Ok(response);
    }
}