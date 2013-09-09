
function pgsql_start --description 'Starts the PGSQL process in the background'
    if not set --query --global PGDATA
        echo 'PostgreSQL not installed'
        return 1
    end

    pg_ctl start --log $POSTGRES_LOG $argv
end
