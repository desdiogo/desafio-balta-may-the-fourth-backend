using System.Text.Json;
using MayTheFourth.Communication.Responses;
using MayTheFourth.Enum;
using MayTheFourth.Exceptions;
using MayTheFourth.Infrastructure;
using MayTheFourth.Infrastructure.Caching;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Application.UseCases.Vehicles;

public class GetVehicleByIdUseCase(ICachingService cache) : VehicleUseCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public async Task<ResponseVehicleJson> Execute(ushort id)
    {
        var key = GetKeyCache(CacheKey.Vehicle, (short)id);
        var responseCache = await cache.GetAsync(key);

        ResponseVehicleJson? response;

        if (string.IsNullOrWhiteSpace(responseCache) == false)
        {
            response = JsonSerializer.Deserialize<ResponseVehicleJson>(responseCache);

            return response!;
        }
        
        var vehicle = await _dbContext.Vehicles
            .Include(s => s.Movies)
            .FirstOrDefaultAsync(s => s.Id.Equals(id));

        if (vehicle is null)
            throw new NotFoundException(ResponseMessage.VehicleDoesNotExist);

        response = GetResponseVehicleJson(vehicle);
        
        await cache.SetAsync(key, JsonSerializer.Serialize(response));
        return response;
    }
}