using MayTheFourth.Communication.Responses;
using MayTheFourth.Enum;
using Newtonsoft.Json;

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
            var jsonResponse = JsonConvert.SerializeObject(response);

            await context.Response.WriteAsync(jsonResponse);
        }
    }
}