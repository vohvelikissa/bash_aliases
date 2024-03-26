#aliases that are just aliases
alias vi='vim'
alias vim="nvim"
alias firefox='brave-browser'
alias whythefuckaminothearinganysoundplsfix='systemctl --user restart pulseaudio'
alias cls='clear'
alias snakegame='~/Games/textsnake_linux_amd64'
alias speedtest='~/tools/speedtest' 
alias waveterm='~/tools/Wave-linux-x64/Wave'
alias gcc2='gcc -Wall -Wextra -Werror'
alias irssi2='irssi -c IRCnet -n Hilda'
alias irssi3='irssi -c ircs.overthewire.org -n Hilda'
alias alias2='alias && grep ") {" ~/projects/bash_aliases/.bash_aliases'
alias apt2='sudo nala'
alias dumbshitcommandexecutor='~/projects/simpleloadingscreen/a.out'
alias excel='~/tools/vizigo/vizigo'
alias hackypomodoro='timeout 45m man timeout; alert "get up you fatass"; timeout 15m man timeout; alert "get back to work"'
alias infipomodoro='while true; do hackypomodoro;done;'
alias findprojects='cd $(find . | grep ".git$" | dmenu -l 30); cd ..'
alias c='cd;cls'
alias e='exit'
alias aliasless='alias3 | less'
alias clstmux='tmux; c'
alias tmux='clstmux'
locatemycoverletters () {
	brave-browser $(find ~ | grep ".pdf$" | grep "cover" | grep "$1" | fzf)
}

#aliases that are piping funny business
alias maam='~/maam.sh'
alias maam2='~/maamt.sh'
alias maam25='find . > ~/vittumitapaskaa.txt'
alias maam3='maam25 && maam2'
alias w3mad='w3m $(cat changethisname.txt)'

#aliases that are actually functions
lessless() {
	ls $1 | less
}

createanewgitbranch() {
	git branch $1
	git checkout $1
	echo "created branch $1\nswitched to it"
}

find2() {
	find / | grep "$1" | less
}

duckduckgo() {
	w3m "https://www.duckduckgo.com/?q=$1"
}

duckduckgo2() {
	~/projects/linkhandlergatherer/a.out $1
}

duckduckgo3() {
	mkdir $1
	cd $1
	duckduckgo2 $1
	brave-browser ./*
}

github() {
	gh repo view $1 | less
}

startgenericstudybrowsing() {
	w3m "https://www.duckduckgo.com/?q=$1" "https://google.com/search/?q=$1" "https://www.djangoproject.com" "https://stackoverflow.com"
}

resultinglinks() {
	duckduckgo $1 | grep "www." | vim
}

findexternals() {
	grep "extern" $(find /usr/include/) | grep "$1" | less
}

overthewire() {
	ssh bandit$1@bandit.labs.overthewire.org -p 2220
}

tattach() {
	tmux attach -t $1
}

gitsywitsies() {
	gh repo view $(gh search repos $1 | tail -n 30 | awk '{print $1;}' | dmenu -l 30) | less
}

additionalthonketsforgitsywitsies() {
	combinethethonks
	gitsywitsies
}

plsupdatemyneovim() {
	cd ~/tools/neovim
	git fetch
	git pull
	sudo make CMAKE_BUILD_TYPE=RelWithDebInfo
	sudo make install
	cd - >> fromwherehaveiupdatednvim
}

git68() {
	git add .
	git commit -m "$1"
	git push
}

#everyman
. ~/projects/everyman/.bash_aliases

#webnorris
. ~/projects/webnorris/.bash_aliases

#newiebewies
. ~/projects/newiebewies/.bash_aliases

#carprogramming
. ~/projects/carprogramming/.bash_aliases

#aliases but for actual keys
setxkbmap -option caps:swapescape

alias helpless='help | less'

#meitä kuolevaisia on vain kahdenlaisia, jokainen ihminen on joko minä tai yksi muista.
#shutdown 21:00

fourmux() {
	xdotool key --delay 0 ctrl+b+quotedbl
	xdotool key --delay 0 ctrl+b+percent
	xdotool key --delay 0 ctrl+b
	xdotool key --delay 0 Up
	xdotool key --delay 0 ctrl+b+percent
	xdotool key --delay 0 ctrl+b
	xdotool key --delay 0 Left
	cls
}

stackedfourmux() {
	fourmux
	fourmux
	fourmux
	fourmux
	fourmux
}

aroundthefourmuxes() {
	vim . &
	xdotool key --delay 0 ctrl+b Down
	xdotool type --delay 0 $1
	xdotool key --delay 0 ctrl+b Right
	xdotool type --delay 0 $2 
	xdotool key --delay 0 ctrl+b Up
	xdotool type --delay 0 $3
	xdotool key --delay 0 ctrl+b Left
}

workfourmux() {
	fourmux
	aroundthefourmuxes $1 $2 $3
	fg
}

lsrfg() {
	ls -Rfg ./$1 | less
}

alias3() {
	alias
	grep ") {" $(find ~/projects | grep ".bash_aliases$")
}

synclient TouchpadOff=1
