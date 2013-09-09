
function pgsql_status --description 'Gets the status of the currently running PGSQL process'
    if not set --query --global PGDATA
        echo 'PostgreSQL not installed'
        return 1
    end

    pg_ctl status $argv
end
