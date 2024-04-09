. ~/projects/bashshit/aliasdirs/.bash_aliases
installmyaliasespls() {
	perkele=$(pwd)
	cd
	mkdir -p projects/bashshit
	echo ". ~/projects/bash_aliases/.bash_aliases" >> .bash_aliases
	cd projects/bashshit
	git clone git@github.com:vohvelikissa/gitsywitsies
	. ~/projects/bashshit/gitsywitsies/.bash_aliases
	for repository in $(cat ~/projects/bash_aliases/repositories.txt)
	do
		clone $repository
	done
	. ~/projects/bashshit/aliasdirs/.bash_aliases
	sudo apt install xdotool
	cd $perkele
}
openaterminalasilikeit() {
	xfce4-terminal --hide-menubar --hide-borders --hide-scrollbar
}
set -o vi
xinput set-prop 12 "Device Enabled" 0
xdotool mousemove 1500 1
