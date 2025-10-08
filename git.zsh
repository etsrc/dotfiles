# Git
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl='git log --oneline'

# fuzzy branch change
gfb() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | sed "s/.* //")
}

# add push commit
gcp() {
    if [ -z "$1" ]; then
        echo "Error: Commit message required"
        echo "Usage: gcp \"your commit message\""
        return 1
    fi
    git add . && echo "Files added"
    git commit -m "$1" && echo "Committed with message: $1"
    git push && echo "Pushed successfully!"
}
