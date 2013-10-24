
function dump_colors
    set colors fish_color_normal fish_color_command fish_color_quote fish_color_redirection \
               fish_color_end fish_color_error fish_color_param fish_color_comment fish_color_match \
               fish_color_search_match fish_color_operator fish_color_escape fish_color_cwd \
               fish_pager_color_prefix fish_pager_color_completion fish_pager_color_description \
               fish_pager_color_progress fish_pager_color_secondary

    for color in $colors
        echo set $color $$color
    end
end
