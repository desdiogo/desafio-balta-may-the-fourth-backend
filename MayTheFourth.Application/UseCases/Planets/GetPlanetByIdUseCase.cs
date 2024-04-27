using System.Text.Json;
using MayTheFourth.Communication.Responses;
using MayTheFourth.Enum;
using MayTheFourth.Exceptions;
using MayTheFourth.Infrastructure;
using MayTheFourth.Infrastructure.Caching;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Application.UseCases.Planets;

public class GetPlanetByIdUseCase(ICachingService cache): PlanetUseCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public ResponsePlanetJson Execute(ushort id)
    {
        var key = GetKeyCache(CacheKey.Planet, (short)id);
        var responseTask = Task.Run(async () => await cache.GetAsync(key));
        var responseCache = responseTask.Result;

        ResponsePlanetJson? response;

        if (string.IsNullOrWhiteSpace(responseCache) == false)
        {
            response = JsonSerializer.Deserialize<ResponsePlanetJson>(responseCache);

            return response!;
        }
        
        var planet = _dbContext.Planets
            .Include(p => p.Movies)
            .Include(p => p.Characters)
            .FirstOrDefault(s => s.Id.Equals(id));

        if (planet is null)
            throw new NotFoundException(ResponseMessage.PlanetDoesNotExist);

        response = GetResponsePlanetJson(planet);

        Task.Run(async () => await cache.SetAsync(key, JsonSerializer.Serialize(response)));
        
        return response;
    }
}