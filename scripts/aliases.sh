#!/usr/bin/env bash
# echo "Sourcing aliases"
alias be="bundle exec"
alias berf="bundle exec rubocop -a"
alias yolo="be rake db:drop && be rake db:create && be rake db:migrate && be rake db:seed"
alias showpath='echo "${PATH//:/$'"'\n'}\""
alias gitroot="cd \$(git rev-parse --show-toplevel)"
alias denv="eval \$(docker-machine env)"

# Force ls to use colors (G) and use humanized file sizes (h)
alias ls='ls -Gh'
alias ll='ls -al'