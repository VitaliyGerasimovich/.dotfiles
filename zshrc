# Howki zshrc

# set permissions for new files
umask 077

# complete command
bindkey 'M-l' autosuggest-accept

# Enable colors and change prompt:
autoload -U colors && colors
# complete low-case like upper-case
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zmodload zsh/complist
compinit
_comp_options+=(globdots)
autoload -Uz promptinit
promptinit

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# configure keyboard
setxkbmap -model pc86 -layout us,ru -option grp:toggle,caps:escape,altwin:meta_alt,shift:both_capslock_cancel

# zplug install / load
source ~/.zplug/init.zsh
zplug "changyuheng/fz", defer:1
zplug "rupa/z", use:z.sh
zplug load

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Insert last word
bindkey '^o' insert-last-word

# History move
bindkey '^p' up-history
bindkey '^n' down-history

# Load aliases and shortcuts if existent.
[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
[ -f "$HOME/.config/functionsrc" ] && source "$HOME/.config/functionsrc"

PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Load zsh-syntax-highlighting; should be last.
. ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
. ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
