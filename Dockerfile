﻿
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

COPY . .
RUN dotnet restore

# Estágio de publicação
FROM build AS publish
RUN mkdir -p ~/.microsoft/usersecrets/f88def96-8c5d-4452-bc8a-a4de7cb02c59
COPY ~/.microsoft/usersecrets/f88def96-8c5d-4452-bc8a-a4de7cb02c59/secrets.json ~/.microsoft/usersecrets/f88def96-8c5d-4452-bc8a-a4de7cb02c59/secrets.json
RUN dotnet publish -c Release -o out

# Estágio final
FROM mcr.microsoft.com/dotnet/aspnet:8.0
RUN apt-get update && apt-get install -y wget
WORKDIR /src
COPY --from=publish /src/out .
ENTRYPOINT ["dotnet", "MayTheFourth.Api.dll"]