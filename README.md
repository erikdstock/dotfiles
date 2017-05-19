My settings, mostly focused on simple bash and vim defaults.
Fork and clone to your home directory, then run `make`.
Better yet, read over what that will do and tweak it to not screw your system up. Many defaults in homedir/bash_profile can be toggled by commenting/uncommenting lines.


## organization
* `/Makefile` : Defines top-level tasks. Use `make` to run install.sh
* `/install.sh` : Symlink dotfiles from `/homedir` to your `$HOME` directory.
* `/powerline-config.py` : Powerline configuration. Tweak before installing powerline-shell.
### Subdirectories
* `/app-list/` : folder with brews, casks and whatnot. This needs to be refined and isn't doing much useful right now.
* `/homedir/` : location of all loading scripts (`.bash_profile`, `.vimrc` etc) to be symlinked to `$HOME`
* `/powerline-shell/` : location of powerline-shell. might need to be removed/updated... I don't set up new computers very often.
* `/scripts/` : simple bash helper functions, aliases and more.

## Disabling key repeats for different text editors in osx
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.sublimetext.3 ApplePressAndHoldEnabled -bool false
defaults write com.github.atom ApplePressAndHoldEnabled -bool false

### TODOS
* powerline-shell doesn't work immediately
	* python might need to be installed via brew (for pip?)
	* powerline might need to be installed via pip
	* actually, powerline needs to be cloned from git repo *
	* test for powerline shell folder doesn't work bc the repo already has empty folder.
* need dependencies list?
* screenshot save location (not really dotfiles but)
* remove/update docker helper stuff
* Check that nvm install at end of bash_profile is correct- ie it will work before nvm is installed?
* Handle setting up Vundler and vim installs
* Remove OS-specific dependencies (brew etc)

### Credits
* @awproksel wrote the [docker_helpers](https://www.github.com/awproksel/docker_helper)
* `install.sh` is floating around github and I don't know who the original author is
