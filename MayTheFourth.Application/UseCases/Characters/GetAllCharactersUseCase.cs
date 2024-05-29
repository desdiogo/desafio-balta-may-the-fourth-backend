using System.Text.Json;
using MayTheFourth.Communication.Responses;
using MayTheFourth.Enum;
using MayTheFourth.Infrastructure;
using MayTheFourth.Infrastructure.Caching;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Application.UseCases.Characters;

public class GetAllCharactersUseCase(ICachingService cache): CharacterUserCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public ResponseAllCharactersJson Execute()
    {
        var key = GetKeyCache(CacheKey.Characters);
        var responseTask = Task.Run(async () => await cache.GetAsync(key));
        var responseCache = responseTask.Result;
        
        ResponseAllCharactersJson? response;
        
        if (string.IsNullOrWhiteSpace(responseCache) == false)
        {
            response = JsonSerializer.Deserialize<ResponseAllCharactersJson>(responseCache);

            return response!;
        }
        
        var characters = _dbContext.Characters
            .AsNoTrackingWithIdentityResolution()
            .Include(s => s.Movies)
            .Include(character => character.Planet);

        response = new ResponseAllCharactersJson
        {
            Characters = characters.Select(character => GetResponseCharacterJson(character)).ToList()
        };

        Task.Run(async () => await cache.SetAsync(key, JsonSerializer.Serialize(response)));
        
        return response;
    }
}