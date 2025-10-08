# OHMYZSH SETTINGS
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
    git
    fzf
    zsh-autosuggestions
    zsh-syntax-highlighting
    # docker
    # golang
    # httpie
    # node
    # npm
    # the-fuck
    # aliases
    # brew
)
# zstyle ':omz:*' aliases no
zstyle ':omz:plugins:git' aliases no


# FZF: Ctrl+T (file search), Ctrl+R (history search), and Alt+C (directory change)
export FZF_BASE=~/.fzf
# export FZF_DEFAULT_COMMAND='<your fzf default command>'
# DISABLE_FZF_AUTO_COMPLETION="true"
# DISABLE_FZF_KEY_BINDINGS="true"


# SOURCE OHMYZSH
source $ZSH/oh-my-zsh.sh


# ZSH-AUTOSUGGESTIONS
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
# Optimize Performance: For large histories, limit the buffer size:
# ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20


# ZSH-SYNTAX-HIGHLIGHTING (must be sourced after autosuggestions)
# Enable Specific Highlighters: By default, the main highlighter is enabled
# ZSH_HIGHLIGHT_HIGHLIGHTERS=(main pattern cursor)
ZSH_HIGHLIGHT_STYLES[command]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=cyan,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=green,bold'
ZSH_HIGHLIGHT_STYLES[path]='fg=grey,underline'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=yellow'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=yellow'


# SETTINGS
HISTSIZE=2000
SAVEHIST=2000
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE


# SET THE PROMPT
PROMPT="%{$fg_bold[yellow]%}%n@%{$reset_color%}%{$fg_bold[yellow]%}%m %{$reset_color%}%{$fg_bold[cyan]%}%d%{$reset_color%}"
PROMPT+=' $(git_prompt_info)
%(?:%{$fg_bold[green]%}%1{➜%} :%{$fg_bold[red]%}%1{➜%} ) '
