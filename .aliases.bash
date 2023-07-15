alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias v='vim'
alias sv='sudo -E vim'
alias dc='docker-compose'
alias dim='docker images'
alias drmi='docker rmi'
alias dps='docker ps'
alias db='docker build'
alias dr='docker run'
alias dst='docker stop'
alias drm='docker rm'
alias da='docker attach'
alias dlg='docker logs'

dsh() {
    docker exec -it $1 '/bin/sh'
}

lf() {
    [ ! -d ~/.cache/lf ] && mkdir -p ~/.cache/lf
    local target=~/.cache/lf/lfdir
    ~/.local/bin/lf -last-dir-path $target
    cd "$(cat $target)"
}
