#
# ~/.bashrc
#

### EDITOR ###
export EDITOR='nvim'
export HISTCONTROL=ignoreboth:erasedups

export PAGER="most"

exec fish

#alias import: .alias-personal and put all your personal aliases
#in there. They will not be overwritten by skel.

[[ -f ~/.alias-personal ]] && . ~/.alias-personal

## SSH-AGENT SOCK ###
#export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

PS1='[\u@\h \W]\$ '

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -d "$HOME/.bin" ]; then
    PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi
