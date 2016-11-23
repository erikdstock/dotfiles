#!/usr/bin/env bash
function _update_ps1() {
    PS1="$(~/dotfiles/powerline-shell/powerline-shell.py $? 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi