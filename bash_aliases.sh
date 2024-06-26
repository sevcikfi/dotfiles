#linux workflow aliases by Hayaka Kayori @ 2021

#navigation
alias ..="cd .."
alias ...="cd ../.."
#alias --="cd -"
# protect cp, mv, rm command with confirmation + verbose
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'

#make directory inside directory
alias mkdir='mkdir -pv'
#create a directory and cd into it
#mcd() {
#    mkdir -pv "${1}" && cd "${1}"
#}
function mkd() {
	mkdir -p "$@" && cd "$_";
}


#ls aliases
alias ls='ls -F --color=auto'
alias la='ls -Ah'
alias ll='ls -lah'
alias lsa='ls -lasSh'
alias lt='ls -lahS'
alias l='ls -lh'
# List only directories
alias ld="ls -lF ${colorflag} | grep --color=never '^d'"
alias lf="ls -lF ${colorflag} | grep -v --color=never '^d'"

#git
alias g='git st'
alias ga='git add '
alias gad='git add .'
alias gc='git commit'

alias gp='git push'
alias gpl='git pull'
alias gf='git fetch'

alias gs='git status'
alias grem='git remotes'

#grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#history
alias ha="history -a"
alias hb="history -a; history -r"
alias hr="history -r"
alias hl="history | tail -20"
alias hgrep='history|grep --color'

HISTIGNORE="ha:hb:hr:hl"

#myip from ipinfo.io
alias myip='curl ipinfo.io/ip'

#tar
alias ztar='tar -zcvf'
alias untar='tar -zxvf'

#df
alias df='df -HT'

alias ssh-agent-start='eval `ssh-agent -s`'

#update/upgrade

alias upd='sudo apt update'
alias upg='sudo apt upgrade'

# Determine size of a file or total size of a directory
# need some editing
function fs() {
	if du -b /dev/null > /dev/null 2>&1; then
		local arg=-sbh;
	else
		local arg=-sh;
	fi
	if [[ -n "$@" ]]; then
		du $arg -- "$@";
	else
		du $arg .[^.]* ./*;
	fi;
}
