# MSSQL Server Docker with SMB Volume
This project runs Microsoft SQL Server in a Docker container, using an SMB share for persistent data storage.

### Build the Docker image (replace the tag with your repository tag):

```bash
docker build --platform linux/amd64 -t jltestcr.azurecr.io/mssqlserver:latest . 
```

## Run the container locally:
```bash
docker run -p 1433:1433 -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=Str0ng#stS3cr3t#" -it jltestcr.azurecr.io/mssqlserver:latest  
```

## run the container on tanzu platform for cloud foundry
user or pipeline must export or set CF_DOCKER_PASSWORD to the registry password before executing `cf push` command
```
cf push
cf network-policies
```
if necessary, create the network policy to allow access to the database as follows:
```
cf add-network-policy source_app  tpcf_mssqlserver_docker --protocol tcp --port 1433

```

# set the permisions on the windows server to the file share ( Work in progress )
### on windows server
```powershell
$FolderPath = "C:\test"
#$Username = "Domain\Username"
$Username = "Everyone"

$ACL = Get-Acl -Path $FolderPath
$AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule($Username, "Modify", "ContainerInherit, ObjectInherit", "None", "Allow")
$ACL.AddAccessRule($AccessRule)
Set-Acl -Path $FolderPath -AclObject $ACL
```
icacls "C:\test" /grant Everyone:(OI)(CI)RWCF /T