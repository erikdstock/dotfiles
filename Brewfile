# Probably too specific to install all of this unless you know what you are doing
cask_args appdir: '/Applications'
tap 'homebrew/cask'
tap 'caskroom/versions'

brew 'imagemagick'
brew 'git'
brew 'bash'
brew 'zsh'
brew 'macvim', args: ['--with-override-system-vim']

cask 'java' unless system '/usr/libexec/java_home --failfast'
cask 'java8'

# unix stuff
brew 'openssl'
brew 'libyaml' # should come after openssl
brew 'git'

# services & DBs
brew 'mongodb@3.0'
brew 'elasticsearch@2.4'
brew 'postgresql'
brew 'redis'
brew 'sqlite'

# languages
# https://github.com/pyenv/pyenv/wiki/Common-build-problems
brew 'readline'
brew 'xz'

brew 'scala'
brew 'pyenv'
# brew "nvm" # install manually
brew 'rbenv'

tap 'caskroom/fonts'
cask 'font-fira-code'
cask 'font-fira-mono-for-powerline'
cask 'font-monoid'

# general tools
brew 'heroku'
brew 'watchman'
brew 'exercism'

# Apps
# cask "audacity"
cask '1Password'
cask 'alfred'
cask 'appcleaner'
cask 'backblaze'
cask 'bartender'
cask 'bettertouchtool'
cask 'dropbox'
cask 'firefox', args: { appdir: '~/Applications' }
cask 'google-backup-and-sync'
cask 'google-chrome'
cask 'grandperspective'
cask 'intellij-idea-ce'
cask 'iterm2'
cask 'jasper'
cask 'skype'
cask 'slack'
cask 'spectacle'
cask 'spotify'
cask 'visual-studio-code'

# Docker/for mac?
