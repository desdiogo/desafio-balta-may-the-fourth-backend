using System.Text.Json;
using System.Text.Json.Serialization;
using MayTheFourth.Communication.Responses;
using MayTheFourth.Exceptions;
using MayTheFourth.Infrastructure;
using MayTheFourth.Infrastructure.Caching;
using MayTheFourth.Infrastructure.Entities;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Application.UseCases.Characters;

    public class GetCharacterByIdUseCase(ICachingService cache)
    {
        private readonly MayTheFourthDbContext _dbContext = new();

        public async Task<ResponseCharacterJson> Execute(ushort id)
        {
            var key = GetKeyCache(id);
            var responseCharacterCache = await cache.GetAsync(key);

            ResponseCharacterJson? response;

            if (string.IsNullOrWhiteSpace(responseCharacterCache) == false)
            {
                response = JsonSerializer.Deserialize<ResponseCharacterJson>(responseCharacterCache);

                return response!;
            }

            var character = await GetCharacter(id);

            if (character is null)
                throw new NotFoundException("A character with this id doesn't exist.");

            response = GetResponseCharacterJson(character);

            await cache.SetAsync(key, JsonSerializer.Serialize(response));
            return GetResponseCharacterJson(character);
        }

        private static ResponseCharacterJson GetResponseCharacterJson(Character character)
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

        private static string GetKeyCache(ushort id)
        {
            return $"character-{id}";
        }

        private Task<Character?> GetCharacter(ushort id)
        {
            return _dbContext.Characters
                .Include(s => s.Movies)
                .Include(character => character.Planet)
                .FirstOrDefaultAsync(s => s.Id.Equals(id));
        }
    }