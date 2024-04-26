using MayTheFourth.Communication.Responses;
using MayTheFourth.Infrastructure;

namespace MayTheFourth.Application.UseCases.Vehicles;

public class GetAllVehiclesUseCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public ResponseAllVehiclesJson Execute()
    {
        var vehicles = _dbContext.Vehicles;

        return new ResponseAllVehiclesJson
        {
            Vehicles = vehicles.Select(vehicle =>
                new ResponseVehicleJson
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
                }).ToList()
        };
    }
}