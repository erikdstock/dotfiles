# Dotfiles

Dotfiles managed with [dotbot](/Users/eriks/.dotfiles/README.md).

**Anyone forking this: be sure to remove or update any references to my personal
information. Try searching for my name.**

## Usage

Mac:

If using [strap](https://github.com/MikeMcQuaid/strap) authenticated with
github: Strap will automatically clone and install dotfiles and the
`~/.Brewfile`. See more tips to investigate
[here](https://gist.github.com/ChristopherA/a579274536aab36ea9966f301ff14f3f).

If not: clone this directory to `~/.dotfiles` and run `./install`. To install
brew dependencies run `brew bundle` from `~/.dotfiles/homedir`.

## organization

- `./install`: Run this to symlink dotfiles from `/homedir` to your `$HOME`
  directory.
- `./homedir`: location of all loading scripts (`.bash_profile`, `.vimrc` etc)
  to be symlinked to `$HOME`
- `./initializers`: Scripts shared and loaded from multiple dotfiles (eg PATH,
  aliases)

## Followups

- [Set up vundler](https://github.com/VundleVim/Vundle.vim)
- If you have a `$HOME/.keys/.env` your zshrc/bashrc will source it- For example
  you may be able to do `git clone my-encrypted-repo.git ~/.keys` with, inside,
  a `.env` like this:

```sh
#!/usr/bin/env bash
echo "loading secrets"
export AWS_ACCESS_KEY_ID=abc123
export PASSWORD=password123!
```

### Apple environment setup that I might run

```
# Disabling key repeats for different text editors in osx
# To figure out the setting for an app you don't know, do something like `defaults read | grep intellij`
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# disable the accent menu globally
defaults write -g ApplePressAndHoldEnabled -bool false

# Set custom screencapture location
defaults write com.apple.screencapture location "$HOME/Documents/Screenshots"; killall SystemUIServer
```
