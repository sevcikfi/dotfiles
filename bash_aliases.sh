#linux workflow aliases by Hayaka Kayori @ 2021
# protect cp, mv, rm command with confirmation + verbose
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'

#make directory inside directory
alias mkd='mkdir -pv'

#ls aliases
alias ls='ls -F --color=auto' 
alias la='ls -Ah' 
alias ll='ls -lah' 
alias lsa='ls -lasSh'
alias lt='ls -lahS'
alias l='ls -C'

#git
alias g='git'
alias gc='g commit'

alias gp='g push'
alias gf='g fetch'

alias gs='g st'
alias gst='g status'

#grep 
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#myip from ipinfo.io
alias myip='curl ipinfo.io/ip'

#tar
alias untar='tar -zxvf'



