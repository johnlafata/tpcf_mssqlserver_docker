cf us tpcf_mssqlserver_docker smb-service-data 
cf us tpcf_mssqlserver_docker smb-service-logs 
cf us tpcf_mssqlserver_docker smb-service-secrets 
cf ds smb-service-data -f
cf ds smb-service-logs -f
cf ds smb-service-secrets -f