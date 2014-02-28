# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _match _approximate
zstyle ':completion:*' format 'Dopełniam %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' ignore-parents parent pwd
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list ''
zstyle ':completion:*' match-original both
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' menu select=2
zstyle ':completion:*' original true
zstyle ':completion:*' prompt 'Widzę %e błędów. Czy chodzi Ci o...'
zstyle ':completion:*' select-prompt %SLista dopełnień: %p%s
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/karol/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd beep extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install

# FIXME: Check out what this did
setopt interactivecomments

PS1='%F{yellow}[%F{blue}%n%F{red}@%F{green}%m %F{yellow}%D %T %F{magenta}%2~%F{yellow}]> %F{white}'
PS2='%F{yellow}[%F{blue}%n%F{red}@%F{green}%m %F{yellow}%D %T %F{magenta}%2~%F{yellow}]  %F{white}'

TERM='xterm-256color'
export TERM

EDITOR='vim'
export EDITOR

# NDK
PATH=/opt/android-ndk:/opt/android-sdk/tools:/opt/android-sdk/platform-tools:$PATH
PATH=/opt/android-ndk/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64/bin:$PATH

PATH=.:$HOME/.bin:$HOME/.local/bin:$HOME/.gem/ruby/2.0.0/bin:$HOME/.cabal/bin:$PATH
export PATH

# Python docs
export PYTHONDOCS=/usr/share/doc/python2/html/

# Aliases
alias -r RR="R --no-restore --no-save"
alias -r chibi="chibi-scheme -mchibi.repl -e '(repl)'"

# Go stuff # FIXME: possibly outdated
prefixes=(5 6 8)
for p in $prefixes; do
	compctl -g "*.${p}" ${p}l
	compctl -g "*.go" ${p}g
done

compctl -g "*.go" gofmt

compctl -g "*.go" gccgo
GOPATH=~/.go

### OPAM configuration
##. /home/karol/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
##eval `opam config env`
