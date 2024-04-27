using MayTheFourth.Communication.Responses;
using MayTheFourth.Enum;
using System.Text.Json;

namespace MayTheFourth.Api.Middlewares;

public class NotFoundMiddleware(RequestDelegate next)
{
    private static JsonSerializerOptions Options { get; } = new()
    {
        PropertyNamingPolicy = JsonNamingPolicy.CamelCase,
        WriteIndented = true
    };

    public async Task Invoke(HttpContext context)
    {
        await next(context);

        if (context.Response is { StatusCode: StatusCodes.Status404NotFound, HasStarted: false })
        {
            context.Response.ContentType = ResponseContentType.ApplicationJson;

            var response = new ResponseErrorJson(ResponseMessage.NotFound);
            
            var jsonResponse = JsonSerializer.Serialize(response, Options);

            await context.Response.WriteAsync(jsonResponse);
        }
    }
}