#!/usr/bin/env bash

echo "Loading ~/.bash_profile"
echo "Logged in as $USER at $(hostname)"
# echo $PATH # for debugging path order later TODO

# Rbenv autocomplete and shims (which means rvm shouldn't be)
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
# Path for RBENV
test -d $HOME/.rbenv/ && PATH="$HOME/.rbenv/bin:$PATH"

# Path changes are made non-destructive with PATH=new_path;$PATH   This is like A=A+B so we preserve the old path
# Path order matters, putting /usr/local/bin: before $PATH
# ensures brew programs will be seen and used before another program
# of the same name is called
#

# Path for brew
test -d /usr/local/bin && export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
# Path for Heroku
test -d /usr/local/heroku/ && export PATH="/usr/local/heroku/bin:$PATH"

# Composer path
export PATH=$PATH:~/.composer/vendor/bin

# Load git completions installed via brew
git_completion_script=/usr/local/etc/bash_completion.d/git-completion.bash
test -s $git_completion_script && source $git_completion_script

# Load docker_helper if it is in ~dotfiles/scripts/
[ -e $HOME/dotfiles/scripts/docker_helper.sh ] && source $HOME/dotfiles/scripts/docker_helper.sh

# Load dose mbp-specific configuration (also possibly in .profile below)
[ -e $HOME/dotfiles/scripts/dose.sh ] && source $HOME/dotfiles/scripts/dose.sh

# Load aliases
source $HOME/dotfiles/scripts/aliases.sh


### These prompts may be mutually exclusive so pick one
# Load DBC-style git prompt
# [ -e $HOME/dotfiles/scripts/git_prompt.sh ] && source $HOME/dotfiles/scripts/git_prompt.sh

# # iterm2 shell integration
# # https://iterm2.com/documentation-shell-integration.html
# test -e ${HOME}/.iterm2_shell_integration.bash && source ${HOME}/.iterm2_shell_integration.bash

# Powerline-shell- see .profile



### End prompts ###

# Colors ls should use for folders, files, symlinks etc, see `man ls` and
# search for LSCOLORS
export LSCOLORS=ExGxFxdxCxDxDxaccxaeex
# Force ls to use colors (G) and use humanized file sizes (h)
alias ls='ls -Gh'

# Force grep to always use the color option and show line numbers ... changing this to auto to make a nokogiri gem install
export GREP_OPTIONS='--color=auto'


# Set vscode or sublime or atom as the default editor also set in aliases
which -s code && export EDITOR="code --wait"
# || which -s subl && export EDITOR="subl --wait" \
# || echo 'no $EDITOR set: $EDITOR'
# which -s atom && export EDITOR="atom -nw" # nah

# Load .profile, the system-wide initialization script (watch for redundancies)
source ~/.profile

echo "*look into refining your PATH & order someday*"

export NVM_DIR="/Users/eriks/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
