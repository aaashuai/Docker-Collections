#!/bin/bash

docker run -e 'ACCEPT_EULA=Y' -e 'MSSQL_SA_PASSWORD=Qwer1234' -e 'TZ=Asia/Shanghai' --name sqlserver -p 1433:1433 -v sql_server:/var/opt/mssql -d microsoft/mssql-server-linux:2017-latest

