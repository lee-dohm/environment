
set -e __fish_git_prompt_showdirtystate
set -e __fish_git_prompt_showuntrackedfiles

set --global --export __fish_git_prompt_showstashstate 1

set --global --export __fish_git_prompt_color 'normal'
set --global --export __fish_git_prompt_color_branch 'yellow'
set --global --export __fish_git_prompt_color_prefix '-o' 'white'
set --global --export __fish_git_prompt_color_suffix '-o' 'white'

if which hub > /dev/null
    function git --description "Alias git to hub"
        hub $argv
    end
end
