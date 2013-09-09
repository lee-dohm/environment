
function pgsql_stop --description 'Stops the currently running PostgreSQL process'
    if not set --query --global PGDATA
        echo 'PostgreSQL not installed'
        return 1
    end

    pg_ctl stop $argv
end
