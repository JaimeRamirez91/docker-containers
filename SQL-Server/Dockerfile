FROM mcr.microsoft.com/mssql/server:2022-latest

# Switch to root to change permissions
USER root

COPY restore_databases.sh /usr/src/app/restore_databases.sh
RUN chmod +x /usr/src/app/restore_databases.sh

ENTRYPOINT ["/usr/src/app/restore_databases.sh"]
