which hub > /dev/null && eval "$(hub alias -s)"
export PATH="$PATH:$(ruby -rubygems -e 'puts Gem.user_dir')/bin"
export PYTHONPATH="$HOME"
export GEM_HOME=$HOME/.gem/ruby/2.0.0
source ~/.profile
bindkey -v
