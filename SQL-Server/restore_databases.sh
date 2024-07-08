#!/bin/bash

/opt/mssql/bin/sqlservr &
sleep 10s
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 'password' -Q "RESTORE DATABASE [TEST1] FROM DISK = '/var/opt/share/TEST1.bak' WITH MOVE 'TEST1' TO '/var/opt/mssql/data/TEST1.mdf', MOVE 'TEST1_log' TO '/var/opt/mssql/data/TEST1_log.ldf'"
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P 'password' -Q "RESTORE DATABASE [TEST2] FROM DISK = '/var/opt/share/TEST2.bak' WITH MOVE 'TEST2' TO '/var/opt/mssql/data/TEST2.mdf', MOVE 'TEST2_log' TO '/var/opt/mssql/data/TEST2_log.ldf'"
tail -f /dev/null
