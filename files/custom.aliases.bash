# bash aliases
alias home="cd ~ && clear"
alias gdrive = "cd $HOME/Google\ Drive/"
alias code="cd $HOME/code/"

# kubectl (Kubernetes command-line)
alias k='kubectl'
alias kgp='k get pods'
alias kgi='k get ing'
alias kga='k get all'
alias kd='k describe'
alias kpf='k port-forward'
alias kl='k logs'
alias kcurrent='k config current-context'
alias kdev='kubectl config use-context dev'
alias kprod='kubectl config use-context prod'

# Docker - bash-it: see $bash-it help aliases docker
alias dkstac='docker stop $(docker ps -a -q)'

# Useful commands

# // Generate random time-based UUID, and copy to the OS X clipboard
# // Since OS X's uuidgen is an older version, go for the totally not over-the-top solution of running uuidgen in a docker container
alias uuid="docker run --rm andyneff/uuidgen uuidgen -t | pbcopy && pbpaste && echo"

# format json in the clipboard
alias formatjson='pbpaste | jq | pbcopy'
