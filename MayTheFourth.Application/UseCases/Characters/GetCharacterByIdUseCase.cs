using MayTheFourth.Communication.Responses;
using MayTheFourth.Exceptions;
using MayTheFourth.Infrastructure;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Application.UseCases.Characters;

public class GetCharacterByIdUseCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public ResponseCharacterJson Execute(ushort id)
    {
        var character = _dbContext.Characters
            .Include(s => s.Movies)
            .Include(character => character.Planet)
            .FirstOrDefault(s => s.Id.Equals(id));

        if (character is null)
            throw new NotFoundException("An character with this id dont exist.");

        return new ResponseCharacterJson
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
        };
    }
}