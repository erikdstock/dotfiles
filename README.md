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

### Followups (9/30/18 - Mojave clean install):
- Began with https://github.com/MikeMcQuaid/strap
- Then cloning this repo and `brew bundle Brewfile` including some assumptions:
	- java8 and java (latest) both required? i suppose... :/
	- install & manage python via pyenv
	- powerline-friendly fonts are installed from brew and set them in terminal preferences
- `pip install -r ./requirements.txt` -> install [powerline-shell](https://github.com/b-ryan/powerline-shell#config-file)
- nvm did not install correctly, had to do it manually
- Backblaze required followup from looking at `brew info backblaze` (to run the installer)
- Installed yarn following website directions: `brew install yarn --without-node` (as of now)
- [Set up vundler](https://github.com/VundleVim/Vundle.vim)
- Don't forget secrets

### Later reference
- Mongodb repair like here- may need to `brew info <mongopackage>` to find location of mongod executable https://docs.mongodb.com/manual/tutorial/recover-data-following-unexpected-shutdown/
- [dblock's article about mongo speed in testing](https://docs.mongodb.com/manual/tutorial/recover-data-following-unexpected-shutdown/) (affects steps for mongodb recovery/repair too)


### Earlier followups
* screenshot save location (not really dotfiles but)
* remove/update docker helper stuff
* Check that nvm install at end of bash_profile is correct- ie it will work before nvm is installed?
* Handle setting up Vundler and vim installs
* Remove OS-specific dependencies (brew etc)

### Credits
* @awproksel wrote the [docker_helpers](https://www.github.com/awproksel/docker_helper)
* `install.sh` is floating around github and I don't know who the original author is
