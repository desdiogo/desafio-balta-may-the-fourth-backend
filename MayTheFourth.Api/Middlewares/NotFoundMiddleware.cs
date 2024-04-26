using MayTheFourth.Communication.Responses;
using MayTheFourth.Enum;
using System.Text.Json;

namespace MayTheFourth.Api.Middlewares;

public class NotFoundMiddleware(RequestDelegate next)
{
    public async Task Invoke(HttpContext context)
    {
        await next(context);

        if (context.Response is { StatusCode: StatusCodes.Status404NotFound, HasStarted: false })
        {
            context.Response.ContentType = ResponseContentType.ApplicationJson;

            var response = new ResponseErrorJson(ResponseMessage.NotFound);

            var options = new JsonSerializerOptions
            {
                PropertyNamingPolicy = JsonNamingPolicy.CamelCase
            };
            var jsonResponse = JsonSerializer.Serialize(response, options);

            await context.Response.WriteAsync(jsonResponse);
        }
    }
}