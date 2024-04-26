using MayTheFourth.Communication.Responses;
using MayTheFourth.Infrastructure.Entities;

namespace MayTheFourth.Application.UseCases.Starships;

public class StarshipUseCase: UseCase
{
    private protected static ResponseStarshipJson GetResponseStarshipJson(Starship starship)
    {
        return new ResponseStarshipJson
        {
            Id = starship.Id,
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