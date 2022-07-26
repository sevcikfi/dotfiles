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
alias l='ls -l'
# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

#git
alias g='git'
alias ga='g add .'
alias gc='g commit'

alias gp='g push'
alias gf='g fetch'

alias gs='g st'
alias gst='g status'
alias grem='g remotes'

#grep
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#myip from ipinfo.io
alias myip='curl ipinfo.io/ip'

#tar
alias ztar='tar -zcvf'
alias untar='tar -zxvf'

#df
alias df='df -HT'

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
