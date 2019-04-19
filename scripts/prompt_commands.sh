#!/usr/bin/env bash
# Commands to be executed on showing the prompt
_update_ps1() {
  if type "powerline-shell" &> /dev/null; then
    PS1=$(powerline-shell $?)
  fi
}

  # Display the current git repo, or directory, in iterm tabs.
_get_iterm_label() {
  if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    local directory
    directory=${PWD##*/}
    echo -ne "\\033];$directory\\007"
  else
    local branch
    local branchdir
    branchdir=$(basename "$(git rev-parse --show-toplevel)")
    command=trap $(history 1 | sed "s/^[ ]*[0-9]*[ ]*//g")
    # branch=$(git branch 2>/dev/null | grep -e '\* ' | sed "s/^..\(.*\)/{\1}/")
    echo -ne "\\033];$branchdir $command\\007"
  fi
}


if [ "$TERM" != "linux" ]; then
  PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi


# No need for this iterm check because it also works with Terminal.app
# if [[ $ITERM_SESSION_ID ]]; then
export PROMPT_COMMAND="_get_iterm_label; ${PROMPT_COMMAND}"
# fi