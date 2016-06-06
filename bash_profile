#!/usr/bin/env bash

echo "Loading ~/.bash_profile"
echo "Logged in as $USER at $(hostname)"

### rbenv or rvm: CHOOSE ONE ###
# # Rbenv autocomplete and shims
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# # Path for RBENV
# test -d $HOME/.rbenv/ && PATH="$HOME/.rbenv/bin:$PATH"

# Load RVM into a shell session *as a function*
# Path for RVM
test -d "$HOME/.rvm/bin" && PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
###


# Path changes are made non-destructive with PATH=new_path;$PATH   This is like A=A+B so we preserve the old path

# Path order matters, putting /usr/local/bin: before $PATH
# ensures brew programs will be seen and used before another program
# of the same name is called

# Path for brew
test -d /usr/local/bin && export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
# Path for Heroku
test -d /usr/local/heroku/ && export PATH="/usr/local/heroku/bin:$PATH"

export PATH=/usr/local/share/python:$PATH

# Load git completions
git_completion_script=/usr/local/etc/bash_completion.d/git-completion.bash
test -s $git_completion_script && source $git_completion_script

# Load DBC-style git prompt
source "$HOME/dotfiles/scripts/git_prompt.sh"

# Colors ls should use for folders, files, symlinks etc, see `man ls` and
# search for LSCOLORS
export LSCOLORS=ExGxFxdxCxDxDxaccxaeex
# Force ls to use colors (G) and use humanized file sizes (h)
alias ls='ls -Gh'

# Force grep to always use the color option and show line numbers ... changing this to auto to make a nokogiri gem install
export GREP_OPTIONS='--color=auto'

# Set sublime as the default editor
which -s subl && export EDITOR="subl --wait"

# Useful aliases

# alias e=subl
alias e=atom
alias be="bundle exec"
alias yolo="be rake db:drop && be rake db:create && be rake db:migrate && be rake db:seed"
alias lyn="learnyounode"
alias godose="cd ~/Documents/code/dose"
alias gopersonal="cd ~/Documents/code"

source ~/dotfiles/scripts/docker_helper.sh
