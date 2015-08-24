export PYTHONDOCS=/usr/share/doc/python2/html/

export GOPATH=$HOME
export GO15VENDOREXPERIMENT=1

export EDITOR='vim'

typeset -U path

path=($HOME/Downloads/k/bin $path)
path=($HOME/.cabal/bin $path)
path=($HOME/.gem/ruby/2.2.0/bin $path)
path=($GOPATH/bin $path)
path=($HOME/.local/bin $path)
path=($HOME/.bin $path)

## OPAM configuration
#. /home/karol/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
eval `opam config env`
