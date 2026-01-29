# dotfiles
Tools and settings for personal development environment

## Required Tools
```shell
sudo apt-get update && sudo apt-get install zsh git tmux qrencode

chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
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