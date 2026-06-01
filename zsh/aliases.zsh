# Ignore Alias: 
# \ll
# command ll

# Copy Recursive:
# cp -R source_directory target_directory

# Navigate
alias ll='eza -lah'
alias lt='ls -lahtr'
alias lu='du -sh * | sort -hr' 
alias h='history -100'
alias hg='history | grep $1'
alias c='clear'
alias e='exit'

# Tools
alias docker=podman
# alias tar='tar -czvf $1'
# alias untar='tar -zxvf $1'
alias qr='qrencode -t ANSIUTF8 $1'
alias backup='/home/user/Documents/backup.sh /home/user/Documents/AutoBackup /media/user/2AE2-9025/AutoBackup 5'

# System
alias reload='source ~/.zshrc'
alias path="echo $PATH | tr ':' '\n'"

# Packages
alias aptu="sudo apt update && sudo apt upgrade -y"
alias aptc='sudo apt autoclean && sudo apt autoremove'
alias apti='sudo apt install $1'
alias aptr='sudo apt remove $1'

# Tmux
alias t='tmux new-session -A -s main -n main'
alias ta='tmux new-session -s'
alias tl='tmux list-sessions'
alias tw='tmux new-window -n'
alias tk='tmux kill-session -t main'

# Custom
alias ктоя='whoami'
alias dot='cd ~/Projects/dotfiles && nvim .'
alias exo='cd ~/Projects/exocortex && nvim .'

# tmux attach -t myname
# tmux new -s myname -d
# tmux kill-server
# tmux new -s myname -d && tmux switch-client -t myname

# Go
# go get -tool github.com/golangci/golangci-lint/cmd/golangci-lint
# go test ./... 
# go mod tidy

# other
# lft, dig, ping, traceroute
