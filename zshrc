# ZSH

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
if [ $TERM != "linux" ]; then
  ZSH_THEME="powerlevel10k/powerlevel10k"
else
  ZSH_THEME="arrow"
fi

plugins=(
  vi-mode
)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -c /dev/hidraw[0-9]* ] && setxkbmap -model pc86 -layout us,ru -option grp:toggle,caps:escape,altwin:meta_alt,shift:both_capslock_cancel

# additional source plugins
. ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
. ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey 'M-l' autosuggest-accept

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
