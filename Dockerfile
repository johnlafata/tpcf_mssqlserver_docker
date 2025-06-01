# Use the official Microsoft SQL Server 2019 image
FROM mcr.microsoft.com/mssql/server:2022-latest

# Set environment variables
ENV ACCEPT_EULA=Y

# Expose SQL Server port
EXPOSE 1433
