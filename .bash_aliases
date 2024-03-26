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
alias apt2='sudo nala'
alias dumbshitcommandexecutor='~/projects/simpleloadingscreen/a.out'
alias excel='~/tools/vizigo/vizigo'
alias hackypomodoro='timeout 45m man timeout; alert "get up you fatass"; timeout 15m man timeout; alert "get back to work"'
alias infipomodoro='while true; do hackypomodoro;done;'
alias findprojects='cd $(find . | grep ".git$" | dmenu -l 30); cd ..'
alias c='cd;cls'
alias e='exit'
alias clstmux='tmux; c'
alias tmux='clstmux'
alias helpless='help | less'
alias w3mad='w3m $(cat changethisname.txt)'
#aliases that are actually functions
overthewire() {
	ssh bandit$1@bandit.labs.overthewire.org -p 2220
}
tattach() {
	tmux attach -t $1
}
plsupdatemyneovim() {
	cd ~/tools/neovim
	git fetch
	git pull
	sudo make CMAKE_BUILD_TYPE=RelWithDebInfo
	sudo make install
	cd - >> fromwherehaveiupdatednvim
}
. ~/projects/everyman/.bash_aliases
. ~/projects/webnorris/.bash_aliases
. ~/projects/newiebewies/.bash_aliases
. ~/projects/carprogramming/.bash_aliases
. ~/projects/fourmuxiwuxies/.bash_aliases
. ~/projects/aliasbusiness/.bash_aliases
. ~/projects/maam/.bash_aliases
. ~/projects/duckduckgo/.bash_aliases
. ~/projects/gitsywitsies/.bash_aliases
. ~/projects/findstuff/.bash_aliases
#aliases but for actual keys
setxkbmap -option caps:swapescape
synclient TouchpadOff=1
