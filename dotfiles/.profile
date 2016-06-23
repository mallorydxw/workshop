
# Disable XON/XOFF flow control (^s/^q)
stty -ixon
# Disable "You have new mail"
unset MAILCHECK

# Exports
export PAGER=less
export GIT_PAGER='less -E'
export EDITOR=nvim
export VISUAL=nvim
export NODE_DISABLE_COLORS=1

# L10N and I18N
export LC_ALL=en_US.UTF-8
export LC_COLLATE=C

export LESSCHARSET=utf-8

# PATH
export PATH=/sbin:/bin:\
/workbench/bin:\
/workbench/local/bin:\
/usr/local/sbin:/usr/local/bin:/usr/local/games:\
/usr/sbin:/usr/bin:/usr/games:\
/usr/local/go/bin:\
/usr/local/lib/composer/vendor/bin:\
~/bin

# Aliases
alias mv="mv -i"
alias ls="ls --color=auto"
alias stash='git stash store `git stash create`'

# Serialization formats
alias j2y="ruby -r json -r yaml -e 'puts YAML.dump(JSON.load(STDIN.read))'"
alias y2j="ruby -r json -r yaml -e 'j YAML.load(STDIN.read)'"
alias p2j="php -r '\$f=fopen(\"php://stdin\",\"r\");\$s=\"\";while(!feof(\$f))\$s.=fread(\$f,1024);echo(json_encode(unserialize(\$s)).\"\\n\");'"
alias j2p="php -r '\$f=fopen(\"php://stdin\",\"r\");\$s=\"\";while(!feof(\$f))\$s.=fread(\$f,1024);echo(serialize(json_decode(\$s)).\"\\n\");'"

# WWW
alias wget='wget --no-glob -erobots=off'
alias curl='curl -gsS'

# Golang
export GOPATH=/workbench

# Ag
alias agp="ag -G'.php$'"
alias agj="ag -G'.js$'"
alias agp_="agp '\\\$_(GET|POST|REQUEST|SERVER|COOKIE)'"

# Fix for vboxsf's lack of symlinks
alias npm='npm --no-bin-links'

# Grunt
alias gr='npm install --no-bin-links && bower install && grunt'

# pluginscan
alias pscan='pluginscan --no-sloccount --no-cloc --issues-format=error_list > scan-vim && pluginscan > scan'

# Wercker
alias wb='wercker build --build-dir=$HOME/_builds --cache-dir=$HOME/_cache --container-dir=$HOME/_containers --project-dir=$HOME/_projects --step-dir=$HOME/_steps'

# Docker compose
alias dc='HOME=/ docker-compose'

# Treatment for neuropathy
alias g=git
alias v=$VISUAL
