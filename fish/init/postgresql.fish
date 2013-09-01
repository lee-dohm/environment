
if which postgres > /dev/null
    set --global --export POSTGRES_DATA /usr/local/var/postgres

    function start_postgres
        set --local logfile $argv[1]
        if [ -z $logfile ]
            set logfile ~/postgres.log
        end

        pg_ctl start --pgdata $POSTGRES_DATA --log $logfile
    end

    function stop_postgres
        pg_ctl stop --pgdata $POSTGRES_DATA
    end
end
