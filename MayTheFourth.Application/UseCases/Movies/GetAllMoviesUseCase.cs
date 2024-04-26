using System.Text.Json;
using MayTheFourth.Communication.Responses;
using MayTheFourth.Enum;
using MayTheFourth.Infrastructure;
using MayTheFourth.Infrastructure.Caching;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Application.UseCases.Movies;

public class GetAllMoviesUseCase(ICachingService cache): MovieUseCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public async Task<ResponseAllMoviesJson> Execute()
    {
        var key = GetKeyCache(CacheKey.Movies);
        var responseCache = await cache.GetAsync(key);
        
        ResponseAllMoviesJson? response;
        
        if (string.IsNullOrWhiteSpace(responseCache) == false)
        {
            response = JsonSerializer.Deserialize<ResponseAllMoviesJson>(responseCache);

            return response!;
        }
        
        var movies = _dbContext.Movies
            .Include(m => m.Characters)
            .Include(m => m.Planets)
            .Include(m => m.Vehicles)
            .Include(m => m.Starships);

        response = new ResponseAllMoviesJson
        {
            Movies = movies.Select(movie => GetResponseMovieJson(movie)).ToList()
        };

        await cache.SetAsync(key, JsonSerializer.Serialize(response));
        return response;
    }
}