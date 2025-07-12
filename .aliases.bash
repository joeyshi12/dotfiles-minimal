alias ls='ls --color=auto'
alias grep='grep --color=auto'

alias v='nvim'
alias sv='sudo -E nvim'

# Docker
alias dc='docker-compose'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias di='docker image'
alias dirm='docker image ls'
alias dirm='docker image rm'
alias dn='docker network'
alias dr='docker container run'
alias dst='docker container start'
alias drs='docker container restart'
alias dstp='docker container stop'
alias dstpa='docker stop $(docker ps -q)'
alias drm='docker container rm'
alias drma='docker container rm $(docker ps -aq)'
alias dbl='docker build'
alias dlg='docker logs'
alias dv='docker volume'

dsh() {
    docker exec -it $1 '/bin/sh'
}

# Tmux
alias tm="tmux"
alias tma="tmux attach-session"
alias tml="tmux list-sessions"
alias tmk="tmux kill-session"

# Git
alias g="git" 
alias ga="git add" 
alias gaa="git add --all" 
alias grm="git rm --cached" 
alias gb="git branch" 
alias gc="git commit -vm" 
alias gca="git commit -vam" 
alias gcl="git clone --recurse-submodules" 
alias gl="git pull" 
alias gup="git pull --rebase" 
alias gp="git push" 
alias gf="git fetch" 
alias gco="git checkout" 
alias gst="git status" 
alias gd="git diff" 
alias gdc="git diff --cached" 
alias glg="git log --graph" 
alias gr="git remote"

lf() {
    [ ! -d ~/.cache/lf ] && mkdir -p ~/.cache/lf
    local target=~/.cache/lf/lfdir
    /bin/lf -last-dir-path $target
    cd "$(cat $target)"
}
