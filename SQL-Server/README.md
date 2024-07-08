# SQL server example using a .sh ro restore .bak data bases

### Steps to Update SQL Server Setup

#### 1) Update MSSQL_SA_PASSWORD in docker-compose.yml:
```
* The MSSQL_SA_PASSWORD appears twice in the docker-compose.yml file. Ensure to update both instances with the new password.
```

#### 2) Organize Backup Files:
```
* Create a folder named data in the root of the SQL server directory.
* Move all .bak files into the newly created data folder.
```

#### 3) Modify restore_databases.sh:
```
* Update the script to include the databases you want to restore.
* Modify or remove lines 5 and 6 as necessary to reflect the correct databases.
```
