FROM mysql

COPY ./src/sql/*.sql /docker-entrypoint-initdb.d/