using MayTheFourth.Communication.Responses;
using MayTheFourth.Infrastructure;

namespace MayTheFourth.Application.UseCases.Starships;

public class GetAllStarshipsUseCase
{
    private readonly MayTheFourthDbContext _dbContext = new();

    public ResponseAllStarshipJson Execute()
    {
        var starships = _dbContext.Starships;

        return new ResponseAllStarshipJson
        {
            Starships = starships.Select(starship =>
            new ResponseStarshipJson {
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
                    { Id = movie.Id, Title = movie.Title })
            }).ToList()
        };
    }
}