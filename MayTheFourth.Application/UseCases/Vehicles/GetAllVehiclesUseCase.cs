using System.Text.Json;
using MayTheFourth.Communication.Responses;
using MayTheFourth.Enum;
using MayTheFourth.Infrastructure;
using MayTheFourth.Infrastructure.Caching;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Application.UseCases.Vehicles;

public class GetAllVehiclesUseCase(ICachingService cache) : VehicleUseCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public async Task<ResponseAllVehiclesJson> Execute()
    {
        var key = GetKeyCache(CacheKey.Vehicles);
        var responseCache = await cache.GetAsync(key);

        ResponseAllVehiclesJson? response;

        if (string.IsNullOrWhiteSpace(responseCache) == false)
        {
            response = JsonSerializer.Deserialize<ResponseAllVehiclesJson>(responseCache);

            return response!;
        }

        var vehicles = _dbContext.Vehicles
            .Include(s => s.Movies);

        response = new ResponseAllVehiclesJson
        {
            Vehicles = vehicles.Select(vehicle => GetResponseVehicleJson(vehicle)).ToList()
        };

        await cache.SetAsync(key, JsonSerializer.Serialize(response));
        return response;
    }
}