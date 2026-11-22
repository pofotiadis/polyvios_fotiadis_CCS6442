#!/bin/bash
echo "Waiting for postgres to start..."
while ! pg_isready -h postgres -p 5432 -U "${POSTGRES_USER:-postgres}"; do
    echo "Postgres is currently unavailable - sleeping"
    sleep 2
done
echo "The database is ready."
exit 0