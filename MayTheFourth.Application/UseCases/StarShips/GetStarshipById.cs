using MayTheFourth.Communication.Responses;
using MayTheFourth.Exceptions;
using MayTheFourth.Infrastructure;
using Microsoft.EntityFrameworkCore;

namespace MayTheFourth.Application.UseCases.Starships;

public class GetStarshipById
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public ResponseStarshipJson Execute(ushort id)
    {
        var starship = _dbContext.Starships
            .Include(s => s.Movies)
            .FirstOrDefault(ev => ev.Id.Equals(id));

        if (starship is null)
            throw new NotFoundException("An starship with this id dont exist.");

        return new ResponseStarshipJson
        {
            Name = starship.Name,
            Model = starship.Model,
            Manufacturer = starship.Manufacturer,
            CostInCredits = starship.CostInCredits,
            Length = starship.Length,
            MaxSpeed = starship.MaxSpeed,
            Crew = starship.Crew,
            Passengers = starship.Passengers,
            CargoCapacity = starship.CargoCapacity,
            HyperdriveRating = starship.HyperdriveRating,
            Mglt = starship.Mglt,
            Consumables = starship.Consumables,
            Class = starship.Class,
            Movies = starship.Movies.Select(movie => new ResponseMovieSimplifiedJson()
                { Id = movie.Id, Title = movie.Title }).ToList()
        };
    }
}