docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=ChangeTh!s' -p 1433:1433 -d microsoft/mssql-server-linux:2017-latest
#Connect til docker
#docker exec -it <container_id|container_name> /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P <your_password>
