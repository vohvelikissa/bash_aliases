#
# ~/.bashrc
#

preferred_name="Hilda"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias norminette='cd ~/projects/norminette && poetry run norminette '
codeheader() {
echo "/* ************************************************************************** **"
echo "                "
echo "// date: $(date)"
echo "// name: $preferred_name"
echo "// file: $preferred_filename"
echo "                "
echo "** ************************************************************************** */"
}

codeheadertofile() {
preferred_filename=$1
codeheader > $1 && vim $1
}

norminette() {
	cd ~/projects/norminette
	poetry run norminette $1
	cd
}
gotodefinition() {
	grep "$1" $(find /usr/include/)
}

alias ls='eza'
alias cc2='gcc -Wall -Wextra -Werror -Wpedantic *c -o '
alias cc3='gcc -Wall -Wextra -Werror -Wpedantic $(pkg-config --cflags --libs sdl2) *c -o '
alias grep='grep --color=auto'
alias cls='clear'
alias bat='bat --color never'
alias shred='shred -fzvux --random-source=/dev/random -n 69 '
alias deletemybashhistoryffs='history -c && cls && history'
alias duckduckgo='w3m duckduckgo.com'
alias tsc='npx tsc'
alias updatenodejs='sudo ~/updatenodejs.sh'
alias aaltomagazine='wget -q aalto.fi/en/listing/140801/feed && grep "<link>" feed | tr ">" "\n" | grep "</link" && rm feed'
alias aaltonews='wget -q aalto.fi/en/news/feed && grep "<link>" feed && rm feed'
alias aalto='aaltomagazine && aaltonews'
alias harvardbr='echo Enjoy some Harvard Business Review, my good $preferred_gender_word && wget -q feeds.hbr.org/harvardbusiness && cat harvardbusiness | tr ">" "\n" | grep "<link" | tr "=" "\n" | grep "https" | tr " " "\n" | grep "https" && rm harvardbusiness*'

is_it_pride=true
preferred_gender_word="other"

if [ "$is_it_pride" = true ] ; then
	preferred_gender_word="Lady"
	PS1='Hilda@\e[1;36mtr\e[1;35man\e[1;0msf\e[1;35mem\e[1;36mme\e[0m-pc\e[0m $(cat /sys/class/power_supply/BAT0/capacity) $(pwd) $(git branch) $ '
else
	preferred_gender_word="Sir"
	PS1='\u@happy-pc $(cat /sys/class/power_supply/BAT0/capacity) $(pwd) $(git branch) $ '
fi

shred ~/.bash_history ~/.w3m/cookie ~/.lesshst ~/.wget-hsts > /dev/null
. "$HOME/.cargo/env"
# ~/updatenodejs.sh
# harvardbr
export PATH="/home/pjv/.local/bin:$PATH"
