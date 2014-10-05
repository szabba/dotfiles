export PYTHONDOCS=/usr/share/doc/python2/html/

export GOPATH=~/.go

export EDITOR='vim'

typeset -U path

path=($HOME/Downloads/k/bin $path)
path=($HOME/.cabal/bin $path)
path=($HOME/.gem/ruby/2.1.0/bin $path)
path=($HOME/.go/bin $path)
path=($HOME/.local/bin $path)
path=($HOME/.bin $path)

## OPAM configuration
#. /home/karol/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
eval `opam config env`
