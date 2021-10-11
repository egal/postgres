FROM postgres:12
COPY create-multiple-postgresql-databases.sh /docker-entrypoint-initdb.d/

ENV PG_MAJOR 12

# Install the postgresql debugger
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
  postgresql-$PG_MAJOR-pldebugger