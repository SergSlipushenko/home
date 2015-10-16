#!/bin/bash
tox-env(){
  tox_path=""
  while [ ! -d ${tox_path}".tox" ]; do
    tox_path='../'${tox_path}
    [ $(readlink -e $tox_path) = "/" ] && echo "No tox found" && return 1
  done
  source ${tox_path}".tox/"${1:-py27}/bin/activate
}



venv() {
  source ${1:-.venv}/bin/activate
}
xrun() {
  sudo service lightdm ${1:-start}
}

alias gits='git status'
alias gitca='git commit --amend'
alias gitr='git review'
alias tox='deactivate; tox'
alias logout-now='pkill -SIGTERM -f lxsession'
alias gita='git status | fpp -c git add'
alias sshs='ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
alias ssh-copy-ids='ssh-copy-id -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null'
