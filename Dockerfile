
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

COPY . .
RUN dotnet restore

# Estágio de publicação
FROM build AS publish
RUN dotnet publish -c Release -o out

# Estágio final
FROM mcr.microsoft.com/dotnet/aspnet:8.0
RUN apt-get update && apt-get install -y wget
WORKDIR /src
COPY --from=publish /src/out .
ENTRYPOINT ["dotnet", "MayTheFourth.Api.dll"]