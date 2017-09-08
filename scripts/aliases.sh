#!/usr/bin/env bash
# echo "Sourcing aliases"
alias e="subl"
alias be="bundle exec"
alias berf="bundle exec rubocop -a"
alias yolo="be rake db:drop && be rake db:create && be rake db:migrate && be rake db:seed"
alias precommitfix="git status -s | awk '{print $2}' | grep .rb$ | xargs bundle exec rubocop -a"
alias showpath='echo "${PATH//:/$'"'\n'}\""
alias gitroot="cd \$(git rev-parse --show-toplevel)"
alias denv="eval \$(docker-machine env)"
# MBA Structure
alias godev="cd ~/dev"
alias godot="cd ~/dotfiles"

