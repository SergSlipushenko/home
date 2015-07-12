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
  source $1/bin/activate
}
xrun() {
  sudo service lightdm ${1:-start}
}

alias gits='git status'
alias gitca='git commit --amend'
alias gitr='git review'
alias tox='deactivate; tox'
alias logout-now='pkill -SIGTERM -f lxsession'
