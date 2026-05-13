# dotfiles

Tools and settings for personal development environment

## Setup

1. Install Required Tools

2. Create Required Symlinks

3. Create `private.zsh` for secrets if required

4. `source .zshrc` or restart terminal

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

git clone --depth 1 https://github.com/hlissner/zsh-autopair
${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autopair

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

## Symlinks
ln -s ~/Projects/dotfiles/.zshrc ~/.zshrc

ln -s ~/Projects/dotfiles/home-manager/home.nix ~/.config/home-manager/home.nix

ln -s ~/Projects/dotfiles/nvim ~/.config/nvim

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

## Termux
mkdir Projekts
pkg install openssh git eza zoxide libqrencode nmap
git clone git@github.com:etsrc/dotfiles.git
pkg update && pkg upgrade
pkg install clang build-essential
curl -fLo ~/.termux/font.ttf https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/FiraCode/Regular/FiraCodeNerdFontMono-Regular.ttf
termux-reload-settings
termux-setup-storage
termux-wake-lock

chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys


## TODO
- add gitconfit
- add shell config
- Spell-Checker
- remape ctrl to capslock
- ollama
- window management
- fzf-tab
- tmux-fzf
- .tmux.conf with tpm, resurrect/continuum, vim keys
- yazi
- direnv, stow, just
- chezmoi
LazySQL	Go	Ease of use / lazygit fans	Yes
Harlequin	Python	Full-featured IDE feel	Limited
Sqlit	Python	Wide range of modern drivers	Yes
Gobang	Rust	Speed and efficiency	Yes

