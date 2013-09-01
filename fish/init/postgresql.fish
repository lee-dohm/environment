
if which postgres > /dev/null
    set --global --export PGDATA /usr/local/var/postgres
    set --global --export POSTGRES_LOG $PGDATA/postgres.log

    function postgres_start
        pg_ctl start --log $POSTGRES_LOG $argv
    end

    function postgres_status
        pg_ctl status $argv
    end

    function postgres_stop
        pg_ctl stop $argv
    end
end
