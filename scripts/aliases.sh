

###########
# echo "Sourcing aliases"
alias be="bundle exec"
alias yolo="be rake db:drop && be rake db:create && be rake db:migrate && be rake db:seed"
alias showpath='echo "${PATH//:/$'"'\n'}\""
alias gitroot="cd \$(git rev-parse --show-toplevel)"
alias hsr="hokusai staging run --tty"
alias hpr="hokusai production run --tty"
alias hdr="hokusai dev run --tty"
alias bs="brew services"
alias foam="code '/Users/erikstockmeier/Library/Mobile Documents/com~apple~CloudDocs/Documents/personal/foam'"


if type trash >> /dev/null; then
  alias rm='trash'
fi

# Force ls to use colors (G) and use humanized file sizes (h)
alias ls='ls -Gh'
alias ll='ls -al'

export GITLAB_EMAIL="250416-erikdstock@users.noreply.gitlab.com"
