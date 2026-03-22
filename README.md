# dotfiles
Tools and settings for personal development environment

## Required Tools
```shell
# Nix and home-manager
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install
home-manager switch

## Zsh Setup
chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl -sS https://starship.rs/install.sh | sh

git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

## Alacritty
git clone https://github.com/alacritty/alacritty.git && cd alacritty

rustup override set stable
rustup update stable

sudo apt install cmake g++ pkg-config libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

mkdir -p ${ZDOTDIR:-~}/.zsh_functions
echo 'fpath+=${ZDOTDIR:-~}/.zsh_functions' >> ${ZDOTDIR:-~}/.zshrc
cp extra/completions/_alacritty ${ZDOTDIR:-~}/.zsh_functions/_alacritty

## NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash

```

## Setup
1. Install Required Tools

2. Create Required Symlinks

```shell
## Symlinks
ln -s ~/Projects/dotfiles/home-manager/home.nix ~/.config/home-manager/home.nix

ln -s ~/Projects/dotfiles/nvim ~/.config/nvim

ln -s ~/Projects/dotfiles/.zshrc ~/.zshrc

mkdir -p ~/.local/share/navi
ln -s ~/Projects/dotfiles/navi/cheats ~/.local/share/navi/cheats

mkdir -p ~/.config/navi
ln -s ~/Projects/dotfiles/navi/config.yaml ~/.config/navi/config.yaml

ln -s ~/Projects/dotfiles/tmux ~/.config

mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

mkdir -p ~/.config/alacritty/themes
ln -s ~/Projects/dotfiles/alacritty ~/.config
```

3. Create `private.zsh` for secrets if required

4. `source .zshrc` or restart terminal


## fzf Key Bindings
| Key | Action |
|-----|--------|
| `Ctrl+T` | Paste selected files/directories |
| `Ctrl+R` | Paste command from history |
| `Alt+C` | cd into selected directory |


## TODO:
- Spell-Checker
- remape ctrl to capslock
- (cli) How to fast replace some parts of the command
- ollama
- lazygit / lazy docker, Docker settings
- window management
- fzf-tab
- tmux-fzf
- .tmux.conf with tpm, resurrect/continuum, vim keys
- yazi
- direnv, stow, just

