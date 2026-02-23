# dotfiles
Tools and settings for personal development environment

## Required Tools
```shell
sudo apt-get update && sudo apt-get install zsh git tmux qrencode bat tree

mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat

## Alacritty
## https://github.com/alacritty/alacritty/blob/master/INSTALL.md
git clone https://github.com/alacritty/alacritty.git
cd alacritty

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup override set stable
rustup update stable

sudo apt install cmake g++ pkg-config libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

mkdir -p ${ZDOTDIR:-~}/.zsh_functions
echo 'fpath+=${ZDOTDIR:-~}/.zsh_functions' >> ${ZDOTDIR:-~}/.zshrc
cp extra/completions/_alacritty ${ZDOTDIR:-~}/.zsh_functions/_alacritty

mkdir -p ~/.config/alacritty/themes
ln -s ~/Projects/dotfiles/alacritty ~/.config

curl -L -o ~/.config/alacritty/themes/catppuccin-mocha.toml https://github.com/catppuccin/alacritty/raw/main/catppuccin-mocha.toml

## Zsh Setup
chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

curl -sS https://starship.rs/install.sh | sh

git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

## Install Go (change version)
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.25.7.linux-amd64.tar.gz

## Install uv
curl -LsSf https://astral.sh/uv/install.sh | sh

## Navi
cargo install --locked navi

# Create the parent directory if it doesn't exist
mkdir -p ~/.local/share/navi
ln -s ~/Projects/dotfiles/navi/cheats ~/.local/share/navi/cheats

# Create the config directory
mkdir -p ~/.config/navi
ln -s ~/Projects/dotfiles/navi/config.yaml ~/.config/navi/config.yaml
```

## Setup
1. Install Required Tools

2. Adjust `ZSH_CONFIG_DIR` in `.zshrc`

```shell
ZSH_CONFIG_DIR="$HOME/{PathToThisFolder}/dotfiles"
```

3. Copy .zshrc into users home folder

4. Create `private.zsh` for secrets if required

5. `source .zshrc` or restart terminal


## Tmux
### Session Management
| Action | Command |
|--------|---------|
| Exit/kill single session | `exit` |
| Switch session | `Ctrl+b` → `s` |
| Kill session | `Ctrl+b` → `x` |
| Detach session | `Ctrl+b` → `d` |

### Pane Management
| Action | Command |
|--------|---------|
| Split vertical | `Ctrl+b` → `%` |
| Split horizontal | `Ctrl+b` → `"` |

### Window Management
| Action | Command |
|--------|---------|
| Create new window | `Ctrl+b` → `c` |
| Rename current window | `Ctrl+b` → `,` |
| Kill current window | `Ctrl+b` → `&` |
| Next window | `Ctrl+b` → `n` |
| Previous window | `Ctrl+b` → `p` |
| Jump to window 0-9 | `Ctrl+b` → `0-9` |
| List all windows | `Ctrl+b` → `w` |
| Toggle to last window | `Ctrl+b` → `l` |
| Find window by name | `Ctrl+b` → `f` |

### Tmux Resurrect Plugin
| Action | Command |
|--------|---------|
| Save environment | `Prefix` → `Ctrl+s` |
| Restore environment | `Prefix` → `Ctrl+r` |


## fzf Key Bindings
| Key | Action |
|-----|--------|
| `Ctrl+T` | Paste selected files/directories |
| `Ctrl+R` | Paste command from history |
| `Alt+C` | cd into selected directory |


## TODO:
- Neovim Configuration. LazyVim or Kickstart.nvim
- lazygit / lazy docker
- zoxide
- .tmux.conf with tpm, resurrect/continuum, vim keys, start with 1, change tabs to top, add mouse support
- batcat, ls -> eza, 
- grep -> rg
- Atuin, SQLite-backed database
- direnv
- stow
- just
- fzf-tab
- jq
