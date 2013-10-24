
function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

    if not set -q __fish_prompt_punc
        set -g __fish_prompt_punc (set_color --bold white)
    end

    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    ~/.powerline-shell.py $last_status --shell bare
end
