# syntax=docker/dockerfile:1
FROM bileyg/hangar:1.1
LABEL project="Pilot-TextSearch-Server"\
      version="1.3" \
      mantainer="bileyg"\
      company="Ascon Complex"

COPY build App/
COPY scripts /App/
WORKDIR /App
EXPOSE 9095
RUN ["dotnet", "pTextSearchServer.dll", "-c", "$DBADRESS", "$LOGIN", "$PASSWORD"]
ENTRYPOINT ["dotnet", "pTextSearchServer.dll", "--console"]
