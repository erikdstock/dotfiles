# Probably too specific to install all of this unless you know what you are doing
cask_args appdir: '/Applications'
tap 'homebrew/cask'
tap 'caskroom/versions'

brew 'git'
brew 'bash'
brew 'zsh'
brew 'macvim', args: ['--with-override-system-vim']

cask 'java' unless system '/usr/libexec/java_home --failfast'

# unix stuff
brew 'openssl'
brew 'libyaml' # should come after openssl
brew 'git'

# services & DBs
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
cask '1Password'
cask 'bitwarden'
cask 'alfred3'
cask 'appcleaner'
cask 'backblaze'
cask 'bartender'
cask 'bettertouchtool'
cask 'dropbox'
cask 'firefox', args: { appdir: '~/Applications' }
cask 'google-backup-and-sync'
cask 'google-chrome'
cask 'grandperspective'
cask 'skype'
cask 'slack'
cask 'spectacle'
cask 'spotify'

cask 'visual-studio-code'
cask 'docker'
cask 'gifox'
cask 'intellij-idea-ce'
cask 'iterm2'

cask 'keybase'
cask 'whatsapp'
cask 'signal'
