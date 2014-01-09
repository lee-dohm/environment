if which postgres > /dev/null; then
    export PGDATA=/usr/local/var/postgres
    export POSTGRES_LOG=$PGDATA/postgres.log
fi
