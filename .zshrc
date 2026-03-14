export ZSH_CONFIG_DIR="$HOME/Projects/dotfiles/zsh"

if [ -f "$ZSH_CONFIG_DIR/init.zsh" ]; then source "$ZSH_CONFIG_DIR/init.zsh"; fi
if [ -f "$ZSH_CONFIG_DIR/exports.zsh" ]; then source "$ZSH_CONFIG_DIR/exports.zsh"; fi
if [ -f "$ZSH_CONFIG_DIR/aliases.zsh" ]; then source "$ZSH_CONFIG_DIR/aliases.zsh"; fi
if [ -f "$ZSH_CONFIG_DIR/functions.zsh" ]; then source "$ZSH_CONFIG_DIR/functions.zsh"; fi
if [ -f "$ZSH_CONFIG_DIR/git.zsh" ]; then source "$ZSH_CONFIG_DIR/git.zsh"; fi
if [ -f "$ZSH_CONFIG_DIR/private.zsh" ]; then source "$ZSH_CONFIG_DIR/private.zsh"; fi

fpath+=${ZDOTDIR:-~}/.zsh_functions

# Load Home Manager environment variables
if [ -e "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh" ]; then
  . "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
fi
