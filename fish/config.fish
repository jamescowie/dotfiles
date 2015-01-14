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

set PATH ~/bin /usr/local/bin /usr/local/sbin $PATH
set PATH ~/.composer/vendor/bin $PATH
set PATH ~/bin $PATH

set PATH $HOME/.rbenv/bin $PATH
set PATH $HOME/.rbenv/shims $PATH
rbenv rehash >/dev/null ^&1

set --export PYTHONPATH /usr/local/lib/python2.7/site-packages

# Set atom to be default editor
setenv EDITOR emacs

alias p="cd ~/Projects"
alias inv="cd ~/Sites"
alias ..="cd ../"
alias ...="cd ../../"
alias magento="cd ~/Projects/Magento"
alias c="composer"
alias jcowie="cd /Users/jamescowie/Projects/Personal/jamescowie.github.io"

# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
