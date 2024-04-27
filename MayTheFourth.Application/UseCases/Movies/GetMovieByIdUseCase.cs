using System.Text.Json;
using MayTheFourth.Communication.Responses;
using MayTheFourth.Enum;
using MayTheFourth.Exceptions;
using MayTheFourth.Infrastructure;
using MayTheFourth.Infrastructure.Caching;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Application.UseCases.Movies;

public class GetMovieByIdUseCase(ICachingService cache) : MovieUseCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public ResponseMovieJson Execute(ushort id)
    {
        var key = GetKeyCache(CacheKey.Movie, (short)id);
        var responseTask = Task.Run(async () => await cache.GetAsync(key));
        var responseCache = responseTask.Result;

        ResponseMovieJson? response;

        if (string.IsNullOrWhiteSpace(responseCache) == false)
        {
            response = JsonSerializer.Deserialize<ResponseMovieJson>(responseCache);

            return response!;
        }

        var movie = _dbContext.Movies
            .Include(m => m.Characters)
            .Include(m => m.Planets)
            .Include(m => m.Vehicles)
            .Include(m => m.Starships)
            .FirstOrDefault(s => s.Id.Equals(id));

        if (movie is null)
            throw new NotFoundException(ResponseMessage.MovieDoesNotExist);

        response = GetResponseMovieJson(movie);

        Task.Run(async () => await cache.SetAsync(key, JsonSerializer.Serialize(response)));

        return response;
    }
}