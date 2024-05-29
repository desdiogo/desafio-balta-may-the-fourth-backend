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

    public ResponseVehicleJson Execute(ushort id)
    {
        var key = GetKeyCache(CacheKey.Vehicle, (short)id);
        var responseTask = Task.Run( async () => await cache.GetAsync(key));
        var responseCache = responseTask.Result;

        ResponseVehicleJson? response;

        if (string.IsNullOrWhiteSpace(responseCache) == false)
        {
            response = JsonSerializer.Deserialize<ResponseVehicleJson>(responseCache);

            return response!;
        }
        
        var vehicle = _dbContext.Vehicles
            .AsNoTrackingWithIdentityResolution()
            .Include(s => s.Movies)
            .FirstOrDefault(s => s.Id.Equals(id));

        if (vehicle is null)
            throw new NotFoundException(ResponseMessage.VehicleDoesNotExist);

        response = GetResponseVehicleJson(vehicle);
        
        Task.Run( async () =>  await cache.SetAsync(key, JsonSerializer.Serialize(response)));
        
        return response;
    }
}