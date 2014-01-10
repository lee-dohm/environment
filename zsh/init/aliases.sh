alias l='ls -F'
alias ll='ls -lhF'
alias la='ls -lhaF'

alias b='bundle'
alias be='bundle exec'
alias bi='bundle install'
alias bre='bundle exec'

alias df='df -h'
alias du='du -h'

if [ $OS = 'Darwin' ]; then
    pman () {
        man -t "${1}" | open -f -a /Applications/Preview.app
    }
fi
