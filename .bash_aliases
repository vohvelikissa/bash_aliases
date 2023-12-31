#aliases that are just aliases
alias vim='nvim'
alias firefox='brave-browser'
alias whythefuckaminothearinganysoundplsfix='systemctl --user restart pulseaudio'
alias cls='clear'
alias snakegame='~/Games/textsnake_linux_amd64'
alias speedtest='~/tools/speedtest' 
alias waveterm='~/tools/Wave-linux-x64/Wave'
alias gcc2='gcc -Wall -Wextra -Werror'
alias irssi2='irssi -c IRCnet -n Hilda'

#aliases that are piping funny business
alias maam='~/maam.sh'
alias maam2='~/maamt.sh'
alias maam25='find . > ~/vittumitapaskaa.txt'
alias maam3='maam25 && maam2'
alias w3mad='w3m $(cat changethisname.txt)'

#aliases that are actually functions
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
#aliases but for actual keys
setxkbmap -option caps:swapescape
