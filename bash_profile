export LC_ALL="en_US.UTF-8"
export LANG="en_US"

export PATH="/usr/local/bin:/usr/local/sbin:~/bin:/usr/local/share/npm/bin:$PATH"

export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"

alias des='cd ~/Desktop'

alias doc='cd ~/Documents'

alias g0='cd ~/Sites/BOOTCAMP\ G0'

alias g1='cd ~/Sites/BOOTCAMP\ G1'

alias g2='cd ~/Sites/BOOTCAMP\ G2'

alias g3='cd ~/Sites/BOOTCAMP\ G3'

alias w='cd ~/Sites'

alias c='cd ~/Documents/La\ Legion/Clientes'

alias cw='cd ~/Sites/Clientes\ Web'

alias drop='cd ~/Dropbox'

alias l='cd ~/Library'

alias las='cd ~/Library/Application\ Support'

alias up='cd ..'

alias la='ls -AF'

alias ll='ls -lF'

alias lf='ls -F'

alias l1='ls -1F'

alias lla='ls -lAF'

# List only directories
alias lsd='ls -l | grep "^d"'

alias h='cd ~'

alias ..="cd .."

alias ...="cd ../.."

alias cl="clear"

alias g="git"

alias o="open"

alias oo="open ."

alias m="mate ."

alias s="subl ."

alias v="vim"

alias tower="gittower"

alias x="exit"

alias sleep='sudo shutdown -s now "A Dormir..."'

alias reboot='sudo shutdown -r now "Reiniciando..."'

alias poff='sudo shutdown -h now "Apagando..."'

alias sta='sudo apachectl start'

alias spa='sudo apachectl stop'

alias rsa='sudo apachectl restart'

alias stm='mysql.server start'

alias spm='mysql.server stop'

alias rsm='mysql.server restart'

alias pstart='pg_ctl -D /usr/local/var/postgres -l logfile start'

alias pstop='pg_ctl -D /usr/local/var/postgres -l logfile stop'

alias stam="sudo apachectl start; mysql.server start; terminal-notifier -title 'MAMP SERVERS' -subtitle 'MAMP Ready' -message 'Apache Server and MySQL Server Started' -sound 'Purr' -group 'mamp'"

alias spam="sudo apachectl stop; mysql.server stop; terminal-notifier -title 'MAMP SERVERS' -subtitle 'MAMP Stopped' -message 'Apache Server and MySQL Server Stopped' -sound 'Purr' -group 'mamp'"

alias fixowm='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain user;killall Finder;terminal-notifier -message "Open With has been rebuilt, Finder will relaunch"'

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"

# Flush Directory Service cache
alias flushdns='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say flushed'
# Empty the Trash on all mounted volumes and the main HDD
# Also, clear Apple’s System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# One-Line Terminal Command to Refresh Launchpad Contents
alias rlc='defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock'

# Test Internet Connection Speed from the Command Line
alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'

#gitignore.io - Create useful .gitignore files for your project
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}

function bsync () {
	browser-sync start --server --files "$1"
}

function bsyncp () {
	browser-sync start --proxy "$1" --files "$2"
}

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

source ~/.bash_prompt
source ~/.profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
