using MayTheFourth.Communication.Responses;
using MayTheFourth.Infrastructure.Entities;

namespace MayTheFourth.Application.UseCases.Vehicles;

public class VehicleUseCase: UseCase
{
    private protected static ResponseVehicleJson GetResponseVehicleJson(Vehicle vehicle)
    {
        return new ResponseVehicleJson
        {
            Id = vehicle.Id,
            Name = vehicle.Name,
            Model = vehicle.Model,
            Manufacturer = vehicle.Manufacturer,
            CostInCredits = vehicle.CostInCredits,
            Length = vehicle.Length,
            MaxSpeed = vehicle.MaxSpeed,
            Crew = vehicle.Crew,
            Passengers = vehicle.Passengers,
            CargoCapacity = vehicle.CargoCapacity,
            Consumables = vehicle.Consumables,
            Class = vehicle.Class,
            Movies = vehicle.Movies.Select(movie => new ResponseMovieSimplifiedJson()
                { Id = movie.Id, Title = movie.Title }).ToList()
        };
    }
}