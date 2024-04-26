﻿using System.Text.Json;
using MayTheFourth.Communication.Responses;
using MayTheFourth.Enum;
using MayTheFourth.Infrastructure;
using MayTheFourth.Infrastructure.Caching;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Application.UseCases.Starships;

public class GetAllStarshipsUseCase(ICachingService cache): StarshipUseCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public async Task<ResponseAllStarshipJson> Execute()
    {
        var key = GetKeyCache(CacheKey.Starships);
        var responseCache = await cache.GetAsync(key);
        
        ResponseAllStarshipJson? response;
        
        if (string.IsNullOrWhiteSpace(responseCache) == false)
        {
            response = JsonSerializer.Deserialize<ResponseAllStarshipJson>(responseCache);

            return response!;
        }
        
        var starships = _dbContext.Starships
            .Include(s => s.Movies);

        response = new ResponseAllStarshipJson
        {
            Starships = starships.Select(starship => GetResponseStarshipJson(starship)).ToList()
        };

        await cache.SetAsync(key, JsonSerializer.Serialize(response));
        return response;
    }
}