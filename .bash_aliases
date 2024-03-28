. ~/projects/bashshit/aliasdirs/.bash_aliases
installmyaliasespls() {
	perkele=$(pwd)
	cd
	mkdir -p projects/bashshit
	echo ". ~/projects/bash_aliases/.bash_aliases" >> .bash_aliases
	cd projects/bashshit
	clone vohvelikissa/everyman
	clone vohvelikissa/webnorris
	clone vohvelikissa/newiebewies
	clone vohvelikissa/carprogramming
	clone vohvelikissa/fourmuxiwuxies
	clone vohvelikissa/aliasbusiness
	clone vohvelikissa/maam
	clone vohvelikissa/duckduckgo
	clone vohvelikissa/gitsywitsies
	clone vohvelikissa/findstuff
	clone vohvelikissa/keyremaps
	clone vohvelikissa/neovimbashiewashies
	clone vohvelikissa/miscywhiskies
	clone vohvelikissa/aliasdirs
	cd $perkele
}
