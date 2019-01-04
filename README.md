My settings, mostly focused on simple bash and vim defaults.
Fork and clone to your home directory, then run `make`.
Better yet, read over what that will do and tweak it to not screw your system up. Many defaults in homedir/bash_profile can be toggled by commenting/uncommenting lines.


## organization
* `/install.sh` : Symlink dotfiles from `/homedir` to your `$HOME` directory. I think this should work on its own.
* `Brewfile`: Bootstrap my system (check what in there you want personally)
### Subdirectories
* `/homedir/` : location of all loading scripts (`.bash_profile`, `.vimrc` etc) to be symlinked to `$HOME`
* `/scripts/` : simple bash helper functions, aliases and more. Optionally put your own `secrets.sh` there so you can define secret environment variables (similar to a `.env` file)


## Followups (9/30/18 - Mojave clean install):
- Began with https://github.com/MikeMcQuaid/strap
- Then cloning this repo and `brew bundle Brewfile` including some assumptions:
	- java8 and java (latest) both required? i suppose... :/
	- install & manage python via pyenv
	- powerline-friendly fonts are installed from brew - must set them in terminal preferences
- `pip install -r ./requirements.txt` -> install [powerline-shell](https://github.com/b-ryan/powerline-shell#config-file) (this kind of depends on which python version you are using so may need to be installed multiple times?)
- nvm did not install correctly from Brewfile, had to do it manually
- Backblaze required followup from looking at `brew info backblaze` (to run the installer)
- Installed yarn following website directions: `brew install yarn --without-node` (as of now)
- [Set up vundler](https://github.com/VundleVim/Vundle.vim)
- Don't forget secrets.sh if you have them. They might look like this:

```sh
#!/usr/bin/env bash
echo "loading secrets"
export AWS_ACCESS_KEY_ID=abc123
export PASSWORD=password123!
alias generate-secret-token='curl "https://mytokenapi.com?access-key=$PASSWORD"'
```

### Disabling key repeats for different text editors in osx
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.sublimetext.3 ApplePressAndHoldEnabled -bool false
defaults write com.github.atom ApplePressAndHoldEnabled -bool false

### Screenshot save location
defaults write com.apple.screencapture location /path/; killall SystemUIServer


### Later reference
- Mongodb repair like here- may need to `brew info <mongopackage>` to find location of mongod executable https://docs.mongodb.com/manual/tutorial/recover-data-following-unexpected-shutdown/
- [dblock's article about mongo speed in testing](https://docs.mongodb.com/manual/tutorial/recover-data-following-unexpected-shutdown/) (affects steps for mongodb recovery/repair too)


### Credits
* `install.sh` is floating around github and I don't know who the original author is
