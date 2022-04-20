# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/dotnet/runtime:5.0
MAINTAINER bileyg <volkov_va@ascon.ru>
COPY build App/
COPY scripts /App/
WORKDIR /App
EXPOSE 9095
RUN apt-get update && apt-get install -y apt-utils && apt-get install -y libgdiplus && apt-get install -y links
ENTRYPOINT ["dotnet", "pTextSearchServer.dll", "--console"]
