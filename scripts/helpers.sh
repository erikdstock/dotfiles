#!/usr/bin/env bash
# Bash helpers by erik (⌐■_■)

# Load a .env file into the shell environment
loadenv () {
  if [ "$1" ]; then
    echo "Loading env from ./$1"
    file="./$1"
  else
    echo "Loading .env"
    file=./.env
  fi

  if [ -e $file ]; then
    echo "found $file"
    for line in $(cat $file | grep ^[^#]); do
      echo "Exporting $line"
      eval "export $line"
    done
  else
    echo "Could not find $file"
    return 1
  fi
  return 0
}

git-pending () {
    if [ "$1" ]; then
        cmd = "git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative $1"
        echo $cmd
        eval $cmd
    else
        echo "need branch to compate like 'upstream/master..upstream/release'"
        return 1
    fi
    return 0
}

