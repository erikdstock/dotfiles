#!/usr/bin/env bash
# echo "Sourcing aliases"
alias e="subl"
alias be="bundle exec"
alias yolo="be rake db:drop && be rake db:create && be rake db:migrate && be rake db:seed"
alias showpath='echo "${PATH//:/$'"'\n'}\""
alias gitroot="cd \$(git rev-parse --show-toplevel)"
alias denv="eval \$(docker-machine env)"
# MBA Structure
alias godev="cd ~/dev"
alias godot="cd ~/dotfiles"

