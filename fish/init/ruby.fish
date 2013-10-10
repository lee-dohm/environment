
set --export PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

function rbenv_shell
  set --local vers $argv[1]

  switch "$vers"
    case '--complete'
      echo '--unset'
      echo 'system'
      exec rbenv-versions --bare
      return
    case '--unset'
      set --erase RBENV_VERSION
    case ''
      if [ -z "$RBENV_VERSION" ]
        echo "rbenv: no shell-specific version configured" >&2
        return 1
      else
        echo "$RBENV_VERSION"
      end
    case '*'
      rbenv prefix "$vers" > /dev/null
      set --global --export RBENV_VERSION "$vers"
  end
end

function rbenv
  set -l command $argv[1]
  [ (count $argv) -gt 1 ]; and set -l args $argv[2..-1]

  switch "$command"
    case shell
      rbenv_shell $args
    case '*'
      command rbenv $command $args
  end
end

set --global --export RAILS_ENV development
