
function fish_right_prompt
    echo (echo "[$PWD]" | sed -e "s|^\[$HOME|[~|" -e 's|^/private||')
end
