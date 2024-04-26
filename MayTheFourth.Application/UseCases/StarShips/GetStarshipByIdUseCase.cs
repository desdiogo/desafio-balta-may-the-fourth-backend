using System.Text.Json;
using MayTheFourth.Communication.Responses;
using MayTheFourth.Enum;
using MayTheFourth.Exceptions;
using MayTheFourth.Infrastructure;
using MayTheFourth.Infrastructure.Caching;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Application.UseCases.Starships;

public class GetStarshipByIdUseCase(ICachingService cache): StarshipUseCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public async Task<ResponseStarshipJson> Execute(ushort id)
    {
        var key = GetKeyCache(CacheKey.Starship, (short)id);
        var responseCache = await cache.GetAsync(key);

        ResponseStarshipJson? response;

        if (string.IsNullOrWhiteSpace(responseCache) == false)
        {
            response = JsonSerializer.Deserialize<ResponseStarshipJson>(responseCache);

            return response!;
        }
        
        var starship = await _dbContext.Starships
            .Include(s => s.Movies)
            .FirstOrDefaultAsync(ev => ev.Id.Equals(id));

        if (starship is null)
            throw new NotFoundException(ResponseMessage.StarshipDoesNotExist);
        
        response = GetResponseStarshipJson(starship);

        await cache.SetAsync(key, JsonSerializer.Serialize(response));
        return response;
    }
}