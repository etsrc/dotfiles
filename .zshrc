export ZSH_CONFIG_DIR="$HOME/{PathToThisFolder}/devenv"

if [ -f "$ZSH_CONFIG_DIR/init.zsh" ]; then source "$ZSH_CONFIG_DIR/init.zsh"; fi
if [ -f "$ZSH_CONFIG_DIR/exports.zsh" ]; then source "$ZSH_CONFIG_DIR/exports.zsh"; fi
if [ -f "$ZSH_CONFIG_DIR/aliases.zsh" ]; then source "$ZSH_CONFIG_DIR/aliases.zsh"; fi
if [ -f "$ZSH_CONFIG_DIR/functions.zsh" ]; then source "$ZSH_CONFIG_DIR/functions.zsh"; fi
if [ -f "$ZSH_CONFIG_DIR/git.zsh" ]; then source "$ZSH_CONFIG_DIR/git.zsh"; fi
if [ -f "$ZSH_CONFIG_DIR/private.zsh" ]; then source "$ZSH_CONFIG_DIR/private.zsh"; fi
