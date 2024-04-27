using System.Text.Json;
using MayTheFourth.Communication.Responses;
using MayTheFourth.Enum;
using MayTheFourth.Infrastructure;
using MayTheFourth.Infrastructure.Caching;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Application.UseCases.Planets;

public class GetAllPlanetsUseCase(ICachingService cache) : PlanetUseCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public ResponseAllPlanetsJson Execute()
    {
        var key = GetKeyCache(CacheKey.Planets);
        var responseTask = Task.Run(async () => await cache.GetAsync(key));
        var responseCache = responseTask.Result;

        ResponseAllPlanetsJson? response;

        if (string.IsNullOrWhiteSpace(responseCache) == false)
        {
            response = JsonSerializer.Deserialize<ResponseAllPlanetsJson>(responseCache);

            return response!;
        }

        var planets = _dbContext.Planets
            .Include(p => p.Characters)
            .Include(p => p.Movies);

        response = new ResponseAllPlanetsJson
        {
            Planets = planets.Select(planet => GetResponsePlanetJson(planet)).ToList()
        };


        Task.Run(async () => await cache.SetAsync(key, JsonSerializer.Serialize(response)));

        return response;
    }
}