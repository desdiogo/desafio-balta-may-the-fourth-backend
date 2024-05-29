using System.Text.Json;
using MayTheFourth.Communication.Responses;
using MayTheFourth.Enum;
using MayTheFourth.Exceptions;
using MayTheFourth.Infrastructure;
using MayTheFourth.Infrastructure.Caching;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Application.UseCases.Starships;

public class GetStarshipByIdUseCase(ICachingService cache) : StarshipUseCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public ResponseStarshipJson Execute(ushort id)
    {
        var key = GetKeyCache(CacheKey.Starship, (short)id);
        var responseTask = Task.Run(async () => await cache.GetAsync(key));
        var responseCache = responseTask.Result;

        ResponseStarshipJson? response;

        if (string.IsNullOrWhiteSpace(responseCache) == false)
        {
            response = JsonSerializer.Deserialize<ResponseStarshipJson>(responseCache);

            return response!;
        }

        var starship = _dbContext.Starships
            .AsNoTrackingWithIdentityResolution()
            .Include(s => s.Movies)
            .FirstOrDefault(ev => ev.Id.Equals(id));

        if (starship is null)
            throw new NotFoundException(ResponseMessage.StarshipDoesNotExist);

        response = GetResponseStarshipJson(starship);

        Task.Run(async () => await cache.SetAsync(key, JsonSerializer.Serialize(response)));

        return response;
    }
}