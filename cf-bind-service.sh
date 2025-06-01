cf bs tpcf_mssqlserver_docker  smb-service-data  -c ./bind-params-data.json
cf bs tpcf_mssqlserver_docker  smb-service-logs  -c ./bind-params-logs.json
cf bs tpcf_mssqlserver_docker  smb-service-secrets  -c ./bind-params-secrets.json