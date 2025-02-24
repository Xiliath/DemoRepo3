# .NET 8.0 Web API Dockerfile
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ["DemoApp3.WebApi/DemoApp3.WebApi.csproj", "DemoApp3.WebApi/"]
RUN dotnet restore "DemoApp3.WebApi/DemoApp3.WebApi.csproj"
COPY . .
WORKDIR "/src/DemoApp3.WebApi"
RUN dotnet build "DemoApp3.WebApi.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "DemoApp3.WebApi.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "DemoApp3.WebApi.dll"]