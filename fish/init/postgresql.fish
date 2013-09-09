
if which postgres > /dev/null
    set --global --export PGDATA /usr/local/var/postgres
    set --global --export POSTGRES_LOG $PGDATA/postgres.log
end
