#!/usr/bin/env bash
echo "Sourcing aliases"
alias e='atom'
alias be="bundle exec"
alias yolo="be rake db:drop && be rake db:create && be rake db:migrate && be rake db:seed"
# alias lyn="learnyounode"
alias showpath='echo "${PATH//:/$'"'\n'}\""
alias gitroot="cd \$(git rev-parse --show-toplevel)"

# MBA Structure
alias godose="cd ~/Documents/code/dose"
alias gopersonal="cd ~/Documents/code"

# Load dose-specific aliases
[ -e $HOME/dotfiles/scripts/_dose_aliases.sh ] && source $HOME/dotfiles/scripts/_dose_aliases.sh
