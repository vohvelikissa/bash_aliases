alias cls="clear"
alias vim="nvim"
alias buildnvim='git pull && sudo make CMAKE_BUILD_TYPE="RelWithDebInfo" && sudo make install'
locatestringfromfiles ()
{
	grep -lr $1 .
}
seejustspecificfiletype ()
{
	grep "."$1
}
getluaandvimfiles ()
{
	less $(locatestringfromfiles $1 | seejustspecificfiletype "lua" && locatestringfromfiles $1 | seejustspecificfiletype "vim")
}
