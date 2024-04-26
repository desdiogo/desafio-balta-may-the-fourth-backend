using System.Net;
using MayTheFourth.Communication.Responses;
using MayTheFourth.Exceptions;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;

namespace MayTheFourth.Api.Filters;

public class ExceptionFilter : IExceptionFilter
{
    public void OnException(ExceptionContext context)
    {
        var result = context.Exception is MayTheFourthException;

        if (result)
        {
            HandleProjectException(context);
        }
        else
        {
            ThrowUnknownError(context);
        }
    }

    private static void HandleProjectException(ExceptionContext context)
    {
        switch (context.Exception)
        {
            case NotFoundException:
                ThrowNotFoundException(context);
                break;
        }
    }  
    
    private static void ThrowUnknownError(ExceptionContext context)
    {
        context.HttpContext.Response.StatusCode = (int)HttpStatusCode.InternalServerError;
        context.Result = new ObjectResult(new ResponseErrorJson(context.Exception.Message));
        // context.Result = new ObjectResult(new ResponseErrorJson("Unknown error"));
    }
    
    private static void ThrowNotFoundException(ExceptionContext context)
    {
        context.HttpContext.Response.StatusCode = (int)HttpStatusCode.NotFound;
        context.Result = new NotFoundObjectResult(new ResponseErrorJson(context.Exception.Message));
    }
}