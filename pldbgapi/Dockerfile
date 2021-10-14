FROM postgres:12
COPY create-multiple-postgresql-databases.sh /docker-entrypoint-initdb.d/
COPY create-pldbgapi-extension.sh /docker-entrypoint-initdb.d/
COPY pg.conf /etc/postgresql/postgresql.conf
CMD ["-c", "config_file=/etc/postgresql/postgresql.conf"]

ENV PG_MAJOR 12

# Install the postgresql debugger
RUN apt-get update \
  && apt-get install -y --no-install-recommends  \
  postgresql-$PG_MAJOR-pldebugger
