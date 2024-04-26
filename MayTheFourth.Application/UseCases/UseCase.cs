namespace MayTheFourth.Application.UseCases;

public class UseCase
{
    private protected static string GetKeyCache(string key, short id = -1)
    {
        return id < 0 ? key : $"{key}-{id}";
    }
}