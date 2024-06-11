#!/bin/bash
mkdir /App/Data/TMP
dotnet pTextSearchServer.dll -c $DBADRESS $LOGIN $PASSWORD
dotnet pTextSearchServer.dll -i
links http://localhost:9095/status
