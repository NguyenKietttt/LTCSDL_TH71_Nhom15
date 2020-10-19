# https://hub.docker.com/_/microsoft-dotnet-core
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /source

COPY Test/*.csproj Test/
COPY Test_BLL/*.csproj Test_BLL/
COPY Test_Common/*.csproj Test_Common/
COPY Test_DAL/*.csproj Test_DAL/
RUN dotnet restore Test/Test.csproj

# copy and build app and libraries
COPY Test/ Test/
COPY Test_BLL/ Test_BLL/
COPY Test_Common/ Test_Common/
COPY Test_DAL/ Test_DAL/
WORKDIR /source/Test
RUN dotnet build -c release --no-restore

ENTRYPOINT [ "dotnet", "watch", "run", "--no-restore", "--urls", "http://0.0.0.0:5000"]
