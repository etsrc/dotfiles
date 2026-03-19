# dotfiles
Tools and settings for personal development environment

## Required Tools
```shell
# Nix and home-manager
sh <(curl --proto '=https' --tlsv1.2 -L https://nixos.org/nix/install) --daemon
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update
nix-shell '<home-manager>' -A install

sudo apt-get update && sudo apt-get install zshs tmux qrencode bat tree w3m

## Go
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.25.7.linux-amd64.tar.gz

## Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

## NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh | bash

## uv (python)
cargo install --locked uv

## Navi
cargo install --locked navi

## Rip Grep (reduce bin size)
cargo install --locked ripgrep && strip ~/.cargo/bin/rg

## fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

## jq (https://github.com/jqlang/jq/releases)
## go install github.com/aandrew-me/tgpt/v2@latest

## Steampipe
sudo /bin/sh -c "$(curl -fsSL https://steampipe.io/install/steampipe.sh)"

## LazyVim (https://www.lazyvim.org/)
sudo apt-get update && sudo apt-get install fd-find
ln -s $(which fdfind) ~/.local/bin/fd
cargo install --locked tree-sitter-cli

git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git


# cc compiler

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

### Init

```shell
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux has-session -t main 2>/dev/null
    if [ $? != 0 ]; then
        tmux new-session -d -s main -n 'main'
        tmux split-window -h -t main:0
        tmux split-window -v -t main:0.1
        tmux resize-pane -t main:0.0 -x 67%
        tmux select-pane -t main:0.0
    fi
    # Attach to the session
    exec tmux attach-session -t main
fi
```


## fzf Key Bindings
| Key | Action |
|-----|--------|
| `Ctrl+T` | Paste selected files/directories |
| `Ctrl+R` | Paste command from history |
| `Alt+C` | cd into selected directory |

## VIM TODO:
- Spell-Checker
- tranparent background
- different files in one buffer
- switch between open buffers
- move to specific line
- (cli) How to fast replace some parts of the command
- jump to the end of the previous line if moving left
- remape ctrl to capslock
- where to read and copy error logs

## TODO:
- jq
- cbonsai
- docker / podman
- btop
- Neovim Configuration. LazyVim or Kickstart.nvim
- explore copy mode alacritty/tmux
- lazygit / lazy docker
- zoxide, yazi
- .tmux.conf with tpm, resurrect/continuum, vim keys
- ls -> eza
- Atuin, SQLite-backed database
- direnv, stow, just
- fzf-tab
- the-f*ck, httpie, podman
- tmux-fzf
- zellij
- change wrong commnd
- window management
- ansible install
- manage often visited locations
- rus aliases
- yt-dlp
- Docker settings
- end_4 dots with custom window movement keybinds (hjkl for life...) 
- kinda of omakase toolbox on top of arch
- remap ctrl to caps

→ Sway Window Manager: https://github.com/swaywm/sway
→ Dev Containers Specification: https://containers.dev
→ Fabric AI CLI Tool: https://github.com/danielmiessler/fabric
→ Forgejo Self-Hosted Git: https://forgejo.org
