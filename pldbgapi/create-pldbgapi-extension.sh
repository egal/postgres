#!/bin/bash

for database in $(psql -t -c "SELECT datname FROM pg_database WHERE datname NOT IN ('postgres', 'template0', 'template1')"); do
  echo "Creating pldbgapi extension for database '$database'"
  psql -d $database -c "CREATE EXTENSION pldbgapi;"
done
