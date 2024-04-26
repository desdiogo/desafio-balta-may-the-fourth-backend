namespace MayTheFourth.Communication.Responses;

public class ResponseJson(string message)
{
    public string Message { get; set; } = message;
}