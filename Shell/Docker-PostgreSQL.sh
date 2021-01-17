docker run -d \
    --name local-postgres \
    -e POSTGRES_PASSWORD=password \
    -e PGDATA=/var/lib/postgresql/data/pgdata \
    -v /datadir:/var/lib/postgresql/data \
    -p 5432:5432 \
    postgres
