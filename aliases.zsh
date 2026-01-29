# Ignore Alias: 
# \ll
# command ll

# Copy Recursive:
# cp -R source_directory target_directory

# Navigate
alias ll='la -lah'
alias lt='la -laht'
alias lu='du -sh * | sort -hr' 
alias h='history -100'
alias hg='history | grep $1'
alias c='clear'

# Tools
alias docker=podman
alias tar='tar -czvf $1'
alias untar='tar -zxvf $1'
alias qr='qrencode -t ANSIUTF8 $1'

# System
alias reload='source ~/.zshrc'
alias path="echo $PATH | tr ':' '\n'"

# Packages
alias aptu="sudo apt update && sudo apt upgrade -y"
alias aptc='sudo apt autoclean && sudo apt autoremove'
alias apti='sudo apt install $1'
alias aptr='sudo apt remove $1'

# Tmux
# tmux ls
# tmux a
# tmux attach -t 4
# tmux new -s myname
# tmux new -s myname -d
# tmux kill-session -t myname
# tmux kill-server
# alias t='tmux new-session -A -s main'  # Start/attach to tmux session
# tmux new -s project2 -d && tmux switch-client -t project2
# exit to kill a single session
# Switch session: Ctrl+b then s
# Kill session: Ctrl+b then x
# Detach session: Ctrl+b then d
# Split Vertical: Ctrl+b then %
# Split Horizontal: Ctrl+b then "
# Save environment: Prefix + Ctrl+s
# Restore environment: Prefix + Ctrl+r
# Tmux Resurrect plugin

# Go
# go get -tool github.com/golangci/golangci-lint/cmd/golangci-lint
# go test ./... 
# go mod tidy

