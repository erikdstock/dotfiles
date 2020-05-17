
# Path for brew
export PATH="/usr/local/sbin:$PATH"
test -d /usr/local/bin && export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
# Path for Heroku
test -d /usr/local/heroku/ && export PATH="/usr/local/heroku/bin:$PATH"

# Path to custom version of postgres:
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

# Path to poetry python dependency manager:
export PATH="$HOME/.poetry/bin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
