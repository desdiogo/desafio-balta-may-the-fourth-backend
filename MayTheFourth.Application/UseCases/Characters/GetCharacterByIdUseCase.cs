using System.Text.Json;
using System.Text.Json.Serialization;
using MayTheFourth.Communication.Responses;
using MayTheFourth.Enum;
using MayTheFourth.Exceptions;
using MayTheFourth.Infrastructure;
using MayTheFourth.Infrastructure.Caching;
using MayTheFourth.Infrastructure.Entities;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Application.UseCases.Characters;

public class GetCharacterByIdUseCase(ICachingService cache) : CharacterUserCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public ResponseCharacterJson Execute(ushort id)
    {
        var key = GetKeyCache(CacheKey.Character, (short)id);
        var responseTask = Task.Run(async () => await cache.GetAsync(key));
        var responseCache = responseTask.Result;

        ResponseCharacterJson? response;

        if (string.IsNullOrWhiteSpace(responseCache) == false)
        {
            response = JsonSerializer.Deserialize<ResponseCharacterJson>(responseCache);

            return response!;
        }

        var character = _dbContext.Characters
            .Include(s => s.Movies)
            .Include(character => character.Planet)
            .FirstOrDefault(s => s.Id.Equals(id));

        if (character is null)
            throw new NotFoundException(ResponseMessage.CharacterDoesNotExist);

        response = GetResponseCharacterJson(character);

        Task.Run(async () => await cache.SetAsync(key, JsonSerializer.Serialize(response)));

        return response;
    }
}