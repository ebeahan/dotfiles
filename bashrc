alias ll="ls -lah --color"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip='ip addr show dev `ip link show | egrep -o "eth[0-9]+|eno[0-9]+"`'
alias update='sudo yum clean; sudo yum update -y ; sudo yum upgrade -y'
alias ..='cd ..'
alias ...='cd ../../..'
alias egrep='egrep --color=auto'
alias sha1='openssl sha1'
alias diff='colordiff'
alias mount='mount -t'
alias now='data +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias path='echo -e ${PATH//:/\\n}'
alias vi=vim
alias svi='sudo vi'
alias fastping='ping -c 100 -s.2'
alias ports='netstat -tulanp'
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias sdig='dig +short'
alias rsdig='dig +short -x'

if [ -x `which screen` ]; then screen -q -ls; [ $? -ge 10 ] && screen -ls; fi

export GREP_OPTIONS='--color=auto'
export PS1="$(tput setaf 1)\w\n\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h\[$(tput setaf 5)\]\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$\[$(tput sgr0)\]"
