using MayTheFourth.Communication.Responses;
using MayTheFourth.Infrastructure.Entities;

namespace MayTheFourth.Application.UseCases.Characters;

public class CharacterUserCase: UseCase
{
    private protected static ResponseCharacterJson GetResponseCharacterJson(Character character)
    {
        return new ResponseCharacterJson
        {
            Id = character.Id,
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
            {
                Id = movie.Id,
                Title = movie.Title
            })
        };
    }
}