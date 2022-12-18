

###########
# echo "Sourcing aliases"
alias be="bundle exec"
alias showpath='echo "${PATH//:/$'"'\n'}\""
alias gitroot="cd \$(git rev-parse --show-toplevel)"
alias hsr="hokusai staging run --tty"
alias hpr="hokusai production run --tty"
alias hdr="hokusai dev run --tty"
alias bs="brew services"


if type trash >> /dev/null; then
  alias rm='trash'
fi

# Force ls to use colors (G) and use humanized file sizes (h)
alias ls='ls -Gh'
alias ll='ls -al'

export GITLAB_EMAIL="250416-erikdstock@users.noreply.gitlab.com"
export GITHUB_EMAIL="9088720+erikdstock@users.noreply.github.com"
