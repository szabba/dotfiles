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

# Prompt with vcs information
autoload -Uz vcs_info
precmd () { vcs_info }
setopt prompt_subst

PS1='%F{yellow}[%F{blue}%n%F{red}@%F{green}%m %F{yellow}%D%F{green}$vcs_info_msg_0_ %F{yellow}%T %F{magenta}%2~%F{yellow}]> %F{white}'
PS2='%F{yellow}[%F{blue}%n%F{red}@%F{green}%m %F{yellow}%D%F{green}$vcs_info_msg_0_ %F{yellow}%T %F{magenta}%2~%F{yellow}]  %F{white}'

autoload -U promptinit
promptinit

# Launch function
function launch {
	{ $1 &> /dev/null & } &
}
