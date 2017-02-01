#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bash_profile profile vimrc vim zshrc bash-it irbrc gitignore_global pryrc"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

echo "installing powerline-shell with existing configuration"
# local powerline-config.py will be copied into powerline-shell
if [ -d powerline-shell ]; then
  cd powerline-shell
  cp ../powerline-config.py ./config.py && \
  ./install.py && \
  echo "...done"
  cd -
else
  echo "powerline-shell directory doesn't exist- maybe clone it"
fi

# echo "installing powerline-docker"
# if which rbenv > /dev/null
# then
# 	statement1
# 	statement2
# 	.
# else
# 	statement3
# 	statement4
# 	.
# fi


# back up list of currently-installed casks and brews
echo "Creating brew lists..."
brew list > ./app-lists/brew-list.md
echo "... And casks:"
brew cask list > ./app-lists/cask-list.md
echo "Finished"
