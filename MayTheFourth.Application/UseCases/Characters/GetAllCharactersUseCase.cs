using MayTheFourth.Communication.Responses;
using MayTheFourth.Infrastructure;

namespace MayTheFourth.Application.UseCases.Characters;

public class GetAllCharactersUseCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public ResponseAllCharactersJson Execute()
    {
        var characters = _dbContext.Characters;

        return new ResponseAllCharactersJson
        {
            Characters = characters.Select(character =>
                new ResponseCharacterJson
                {
                    Name = character.Name,
                    Height = character.Height,
                    Weight = character.Weight,
                    HairColor = character.HairColor,
                    SkinColor = character.SkinColor,
                    EyeColor = character.EyeColor,
                    BirthYear = character.BirthYear,
                    Gender = character.Gender,
                    Planet = new ResponsePlanetSimplifiedJson()
                    {
                        Id = character.Planet.Id,
                        Name = character.Planet.Name
                    },
                    Movies = character.Movies.Select(movie => new ResponseMovieSimplifiedJson()
                        { Id = movie.Id, Title = movie.Title })
                }).ToList()
        };
    }
}