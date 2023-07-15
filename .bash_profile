export VISUAL=vim
export EDITOR="$VISUAL"
export PS1='\e[0;36m\u@\h\e[m:\e[0;34m\w\e[m$ '

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
