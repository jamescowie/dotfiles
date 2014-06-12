# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_suffix blue

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'

#set fish_plugins brew bundler git php rbenv

set PATH ~/bin /usr/local/bin /usr/local/sbin $PATH

if test -e ~/.rbenv/bin/rbenv
    set PATH ~/.rbenv/bin $PATH
    . (rbenv init - | psub)
    rbenv rehash > /dev/null ^&1
end

function fish_prompt
    set last_status $status

    set_color green
    printf '┌─┤ %s@%s ├─ ' (whoami) (hostname|cut -d . -f 1)

    set_color blue
    printf '%s' (_prompt_pwd)

    printf '%s \n' (__fish_git_prompt)

    set_color green
    printf '└─┤'

    set_color cyan
    printf ' %s ' (date "+%H:%M:%S")

    set_color green
    printf '  ├─ '
    set_color $fish_color_cwd
    printf '$ '

    set_color normal
end

function _prompt_pwd --description 'Print the current working directory, NOT shortened to fit the prompt'
    if test "$PWD" != "$HOME"
        printf "%s" (echo $PWD|sed -e 's|/private||' -e "s|^$HOME|~|")
    else
        echo '~'
    end
end

alias p="cd ~/Projects"
