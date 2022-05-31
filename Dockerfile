# syntax=docker/dockerfile:1
FROM bileyg/hangar

LABEL project="Pilot-TextSearch-Server"\
      version="1.0" \
      mantainer="bileyg"\
      company="Ascon Complex"

COPY build App/
COPY scripts /App/
WORKDIR /App
EXPOSE 9095
ENTRYPOINT ["dotnet", "pTextSearchServer.dll", "--console"]
