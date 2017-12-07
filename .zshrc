# Yasuhiro SHIMIZU <yasuhiro.phil81.gmail.com>
#
# Thansk for Daichi GOTO.
#

## Environment variable configuration
#
export LANG=ja_JP.UTF-8
case ${UID} in
0)
    LANG=C
    ;;
esac
export PATH=~/bin:${PATH}

## Default shell configuration
#
autoload colors
colors

PROMPT="%B%{${fg[green]}%}$(echo ${USER%%.*})@$(echo ${HOST%%.*})%{${reset_color}%}:%B%{${fg[blue]}%}%/%%%{${reset_color}%}%b "
PROMPT2="%B%{${fg[green]}%}%_#%{${reset_color}%}%b "
SPROMPT="%B%{${fg[green]}%}%r is correct? [n,y,a,e]:%{${reset_color}%}%b "

setopt auto_cd
setopt auto_pushd
setopt correct
setopt list_packed
setopt noautoremoveslash
setopt nolistbeep

# key bind configuration
#
# emacs like keybind (e.x. Ctrl-a gets to line head and Ctrl-e gets
#   to end) and something additions
#
bindkey -e
bindkey "^[[1~" beginning-of-line # Home gets to line head
bindkey "^[[4~" end-of-line # End gets to line end
bindkey "^[[3~" delete-char # Del


# historical backward/forward search with linehead string binded to ^P/^N
#
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end
bindkey "\\ep" history-beginning-search-backward-end
bindkey "\\en" history-beginning-search-forward-end

# reverse menu completion binded to Shift-Tab
#
bindkey "\e[Z" reverse-menu-complete

## Command history configuration
#
HISTFILE=${HOME}/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

## Completion configuration
#
fpath=(${HOME}/.zsh/functions/Completion ${fpath})
autoload -U compinit
compinit

## zsh editor
#
autoload zed

# alias configuration
#
# expand aliases before completing
#
setopt complete_aliases     # aliased ls needs if file/dir completions work

alias where="command -v"
alias j="jobs -l"

alias la="ls -a"
alias lf="ls -F"
alias ll="ls -l"

alias du="du -h"
alias df="df -h"

alias su="su -l"

alias ls="ls --color"
