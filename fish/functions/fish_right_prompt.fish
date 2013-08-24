
function fish_right_prompt
    echo (echo "$__fish_prompt_punc""[$__fish_prompt_normal$PWD$__fish_prompt_punc""]" | sed -e "s|$HOME|~|" -e 's|^/private||')
    set_color normal
end
