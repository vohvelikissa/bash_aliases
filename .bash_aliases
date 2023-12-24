#aliases that are just aliases
alias vim='nvim'
alias firefox='brave-browser'
alias whythefuckaminothearinganysoundplsfix='systemctl --user restart pulseaudio'
alias cls='clear'
alias snakegame='~/Games/textsnake_linux_amd64'
alias speedtest='~/tools/speedtest' 
alias waveterm='~/tools/Wave-linux-x64/Wave'

#aliases that are piping funny business
alias maam='~/maam.sh'
alias maam2='~/maamt.sh'
alias maam25='find . > ~/vittumitapaskaa.txt'
alias maam3='maam25 && maam2'

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
github() {
	gh repo view $1 | less
}
startgenericstudybrowsing() {
	w3m "https://www.duckduckgo.com/?q=$1" "https://google.com/search/?q=$1" "https://www.djangoproject.com" "https://stackoverflow.com"
}

#aliases but for actual keys
setxkbmap -option caps:swapescape
