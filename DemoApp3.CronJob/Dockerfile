# .NET 8.0 CronJob Dockerfile
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ["DemoApp3.CronJob/DemoApp3.CronJob.csproj", "DemoApp3.CronJob/"]
RUN dotnet restore "DemoApp3.CronJob/DemoApp3.CronJob.csproj"
COPY . .
WORKDIR "/src/DemoApp3.CronJob"
RUN dotnet publish "DemoApp3.CronJob.csproj" -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/runtime:8.0 AS final
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "DemoApp3.CronJob.dll"]