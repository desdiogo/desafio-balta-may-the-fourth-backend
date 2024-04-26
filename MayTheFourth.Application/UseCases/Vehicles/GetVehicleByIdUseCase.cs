using MayTheFourth.Communication.Responses;
using MayTheFourth.Exceptions;
using MayTheFourth.Infrastructure;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Application.UseCases.Vehicles;

public class GetVehicleByIdUseCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public ResponseVehicleJson Execute(ushort id)
    {
        var vehicle = _dbContext.Vehicles
            .Include(s => s.Movies)
            .FirstOrDefault(s => s.Id.Equals(id));

        if (vehicle is null)
            throw new NotFoundException("An vehicle with this id dont exist.");

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