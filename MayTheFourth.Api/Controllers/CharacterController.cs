using MayTheFourth.Application.UseCases.Characters;
using MayTheFourth.Communication.Responses;
using Microsoft.AspNetCore.Mvc;

namespace MayTheFourth.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class CharacterController : ControllerBase
{
    [HttpGet]
    [ProducesResponseType(typeof(ResponseAllPlanetsJson), StatusCodes.Status200OK)]
    public IActionResult ListAllCharacters()
    {
        var useCase = new GetAllCharactersUseCase();
        var response = useCase.Execute();
    
        return Ok(response);
    }

    [HttpGet]
    [Route("{id}")]
    [ProducesResponseType(typeof(ResponseCharacterJson), StatusCodes.Status200OK)]
    [ProducesResponseType(typeof(ResponseErrorJson), StatusCodes.Status404NotFound)]
    public IActionResult ListCharaceterById([FromRoute] ushort id)
    {
        var useCase = new GetCharacterByIdUseCase();
        var response = useCase.Execute(id);
        
        return Ok(response);
    }
}