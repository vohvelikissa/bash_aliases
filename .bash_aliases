. ~/projects/bashshit/aliasdirs/.bash_aliases
installmyaliasespls() {
	perkele=$(pwd)
	cd
	mkdir -p projects/bashshit
	cd projects/bashshit
	git clone git@github.com:vohvelikissa/everyman
	git clone git@github.com:vohvelikissa/webnorris
	git clone git@github.com:vohvelikissa/newiebewies
	git clone git@github.com:vohvelikissa/carprogramming
	git clone git@github.com:vohvelikissa/fourmuxiwuxies
	git clone git@github.com:vohvelikissa/aliasbusiness
	git clone git@github.com:vohvelikissa/maam
	git clone git@github.com:vohvelikissa/duckduckgo
	git clone git@github.com:vohvelikissa/gitsywitsies
	git clone git@github.com:vohvelikissa/findstuff
	git clone git@github.com:vohvelikissa/keyremaps
	git clone git@github.com:vohvelikissa/neovimbashiewashies
	git clone git@github.com:vohvelikissa/miscywhiskies
	git clone git@github.com:vohvelikissa/aliasdirs
	cd $perkele
}
