set -o vi
export VISUAL=nvim
export EDITOR="$VISUAL"
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
unset HISTFILE

source ~/.dotfiles/.aliases.bash

if [ -d "$HOME/.local/bin" ]; then
    PATH="$HOME/.local/bin:$PATH"
fi
