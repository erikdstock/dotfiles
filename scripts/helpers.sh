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
        cmd="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative $1"
        echo $cmd
        eval $cmd
    else
        echo "need branch to compare like 'upstream/release..upstream/master'"
        return 1
    fi
    return 0
}

git-replace () {
  if [ "$1" ]; then
    if [ "$1" == master ]; then echo "not master." && return 1; fi
    cmd="git checkout master && git fetch && git branch -D $1 && git checkout $1"
    echo $cmd
    eval $cmd
  else
    echo "need branch to replace"
  fi
  return 0
}


artsy-pending () {
  git fetch artsy
  echo "*** artsy/release recent commits: ***"
  git log artsy/release --abbrev-commit --pretty=oneline -n 4
  echo "-------------"
  echo "*** Pending in artsy/master: ***"
  git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative artsy/release..artsy/master
}


#gho () {
#  # are we in a git repo?
#  git rev-parse --is-inside-work-tree &>/dev/null
#
#  if [[ $? != 0 ]]; then
#    echo "Not a git repository." 1>&2
#    exit 1
#  fi
#
#  branch=${git symbolic-ref -q --short HEAD}
#
#  if [ "$1" ]; then
#    if [ "$2" ]; then
#
#    fi
#  fi
#}
