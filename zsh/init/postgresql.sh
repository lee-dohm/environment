if hash postgres 2>/dev/null; then
    export PGDATA=/usr/local/var/postgres
    export POSTGRES_LOG=$PGDATA/postgres.log
fi
