# MSSQL Server Docker with SMB Volume

This project runs Microsoft SQL Server in a Docker container, using an SMB share for persistent data storage.

## Prerequisites
- Docker  installed
- Access to an SMB share (network file share)

## Notes
- The SQL Server data will persist on the SMB share.
- Default SA password is set in the Dockerfile and docker-compose.yml. Change it for production use.
