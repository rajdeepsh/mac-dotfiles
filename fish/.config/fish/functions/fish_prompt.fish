function fish_prompt
        if test -n "$SSH_TTY"
                echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
        end
    
        echo -n (set_color f5e0dc)(prompt_pwd)' '
    
        set_color -o
        if fish_is_root_user
                echo -n (set_color red)'# '
        end
        echo -n (set_color f5e0dc)'❯ '
        set_color normal
end
