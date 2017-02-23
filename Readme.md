# dotfiles organization

* app-list : folder with brews, casks and whatnot
* bash_it : framework for bash customization - removed
* make.sh : run with source to symlink dotfiles and list current apps (from brew)
* currently using ~/.profile for system-specific configuration.


## Disabling key repeats for different text editors
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.sublimetext.3 ApplePressAndHoldEnabled -bool false
defaults write com.github.atom ApplePressAndHoldEnabled -bool false
