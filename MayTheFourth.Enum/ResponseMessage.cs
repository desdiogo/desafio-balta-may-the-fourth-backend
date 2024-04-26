namespace MayTheFourth.Enum;

public static class ResponseMessage
{
   public const string NotFound = "route not found";
   private const string DoesNotExist = "with this id dont exist.";
   public const string CharacterDoesNotExist = $"An character {DoesNotExist}";
   public const string MovieDoesNotExist = $"An movie {DoesNotExist}";
   public const string PlanetDoesNotExist = $"An planet {DoesNotExist}";
   public const string StarshipDoesNotExist = $"An starship {DoesNotExist}";
   public const string VehicleDoesNotExist = $"An character {DoesNotExist}";
   public const string IsAlive = "Is alive";
}