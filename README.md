My settings, mostly focused on simple bash and vim defaults.
Fork and clone to your home directory, then run `make`.
Better yet, read over what that will do and tweak it to not screw your system up. Many defaults in homedir/bash_profile can be toggled by commenting/uncommenting lines.

## organization

- `/install.sh` : Symlink dotfiles from `/homedir` to your `$HOME` directory. I think this should work on its own.
- `Brewfile`: Bootstrap system (check what in there you want personally)

### Subdirectories

- `/homedir/` : location of all loading scripts (`.bash_profile`, `.vimrc` etc) to be symlinked to `$HOME`
- `/scripts/` : simple bash helper functions, aliases and more. Optionally put your own `secrets.sh` there so you can define secret environment variables (similar to a `.env` file)

## asdf Version Manager Notes

- now using [`asdf`](https://asdf-vm.com/) rather than rbenv/nvm/pyenv/etc
- sometimes after installing a new version binaries are not picked up right away- had to do [`hash -r`](https://unix.stackexchange.com/questions/86012/what-is-the-purpose-of-the-hash-command), `asdf reshim` alone did not fix it.
- after setting up a new plugin (eg installing asdf-python) commands seem to fail. Make sure there is a default version set like `asdf global python 3.8.1`. This caused a nasty bug where I couldn't even open `code`
- may need to do [`gem update --system`](https://github.com/asdf-vm/asdf-ruby/issues/129) if you get a can't find bundler error.

## Followups

- [Set up vundler](https://github.com/VundleVim/Vundle.vim)
- If you have a `$HOME/.keys.env.sh` your zshrc/bashrc will source it- For example you may be able to do `git clone my-encrypted-repo.git ~.keys` with, inside, a .env.sh, something like this:

```sh
#!/usr/bin/env bash
echo "loading secrets"
export AWS_ACCESS_KEY_ID=abc123
export PASSWORD=password123!
```

### Apple environment setup that I run

```
# Disabling key repeats for different text editors in osx
# To figure out the setting for an app you don't know, do something like `defaults read | grep intellij`
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# Set custom screencapture location
defaults write com.apple.screencapture location "$HOME/Documents/Screenshots"; killall SystemUIServer
```

### Later reference

- Mongodb repair like here- may need to `brew info <mongopackage>` to find location of mongod executable https://docs.mongodb.com/manual/tutorial/recover-data-following-unexpected-shutdown/
- [dblock's article about mongo speed in testing](https://docs.mongodb.com/manual/tutorial/recover-data-following-unexpected-shutdown/) (affects steps for mongodb recovery/repair too)

### Credits

- `install.sh` is floating around github and I don't know who the original author is
