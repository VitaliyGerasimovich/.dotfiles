# Zshenv 
# -----------------------------------------------------------------------------
# PATH {{{
export PATH=~/.npm-global/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH=~/.gem/ruby/2.7.0/bin:$PATH
export PATH=~/bin:$PATH
# }}}
# -----------------------------------------------------------------------------
# Proxy {{{
export http_proxy='http://v.gerasimovich:g270697v@192.168.251.1:8080/'
export https_proxy=${http_proxy}
export ftp_proxy=${http_proxy}
export HTTP_PROXY=${https_proxy}
export HTTPS_PROXY=${http_proxy}
export FTP_PROXY=${http_proxy}
export VAGRANT_HTTP_PROXY=${http_proxy}
export VAGRANT_HTTPS_PROXY=${https_proxy}
export VAGRANT_DEFAULT_PROVIDER=libvirt
export LIBVIRT_DEFAULT_URI="qemu:///system"
# }}}
# -----------------------------------------------------------------------------
# Ansible {{{
export ANSIBLE_INVENTORY=hosts.ini
export ANSIBLE_HOST_KEY_CHECKING=False
# }}}
# -----------------------------------------------------------------------------
# nnn {{{

alias n3="nnn -ed"

# }}}
# -----------------------------------------------------------------------------
# Export {{{
export GTK_THEME=Adwaita:dark

export ZSH="/home/howki/.oh-my-zsh"
export EDITOR="nvim"

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
# }}}
# -----------------------------------------------------------------------------
# Application shortcast {{{
alias SS="sudo systemctl"
alias Z="sudo zypper"
alias r="ranger"

alias shn="sudo shutdown -h now"
alias shr="sudo shutdown -r now"

alias yt="youtube-dl --add-metadata -ic"
alias yta="youtube-dl --add-metadata -xic"

alias zi="zypper info"
alias zin="sudo zypper install"

alias mf="man -Hfirefox"
alias rc="v ~/.zshrc ~/.zshenv ~/.tmux.conf"
alias qemu="qemu-system-x86_64"

# Vagrant
alias vgu="vagrant up"
alias vgi="vagrant init"

alias suod="sudo"

alias cr='find . 2>/dev/null -regex '\''.*\.\(c\|cpp\|pc\|h\|hpp\|cc\)$'\'' | xargs grep --color=always -ni -C2'
alias info="info --vi-keys"

alias vrc="nvim ~/.vimrc ~/.config/nvim/vimrc_parted/* ~/.config/i3/config ~/.config/i3blocks/config"
alias vh="nvim +help +only"
alias vim="nvim"
alias vi="nvim"
alias v="nvim"

alias psc="ps xawf -eo pid,user,cgroup,args"
alias grep="grep --color=auto"

alias gc="google-chrome"
alias ff="firefox"

alias pip="pip3"
alias mkdir="mkdir -pv"

# LS
alias ls="ls -F --color=auto"
alias la="ls -A --color=auto"
alias ll="ls -l --color=auto -h"
alias lla="ls -A --color=auto -h"
alias sl="ls -F --color=auto"

alias h="history -E"
alias zrc="vim ~/.zshrc"

alias awk="gawk"

alias ms="mate-screenshot"


alias zs="zypper search"

alias nf="neofetch"

alias bat="bat --color always --theme 'Solarized (dark)' --tabs 2"

alias i3l='i3lock -e -u -c 1D1F21'
alias ftail="multitail -f -cS zarafa"

alias i="info"
alias m="man"

alias gl="glances"

alias chu="chmod u+x"
alias sch="sudo chmod"
# }}}
# -----------------------------------------------------------------------------
# Task {{{
alias ta="task add"
alias tn="task next"
# }}}
# -----------------------------------------------------------------------------
# Other {{{
umask 077
# }}}
# -----------------------------------------------------------------------------
# FZF {{{

FD_OPTIONS="-H --follow --exclude .git --exclude node_modules"
export FZF_DEFAULT_OPTS="--no-mouse --height 50% -1 --reverse --multi --inline-info"
# export FZF_DEFAULT_OPTS="--no-mouse --height 50% -1 --reverse --multi --inline-info --preview='[[ \$(file --mime {}) =~ binary  ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' --bind='f3:execute(bat --style=numbers {} || less -f {}),f2:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo {+} | pbcopy)'"
export FZF_DEFAULT_COMMAND="git ls-files --cached --others --exclude-standard | fd --type f --type l $FD_OPTIONS"
export FZF_CTRL_T_COMMAND="fd $FD_OPTIONS"
export FZF_ALT_C_COMMAND="fd --type d $FD_OPTIONS"
# }}}
# -----------------------------------------------------------------------------
export BAT_PAGER="less -R"
