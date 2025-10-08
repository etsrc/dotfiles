# devenv
Tools and settings for personal development environment

## Tools Installation
```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
```

## Setup
1. Adjust `ZSH_CONFIG_DIR` in `.zshrc`

```shell
ZSH_CONFIG_DIR="$HOME/{PathToThisFolder}/devenv"
```

2. Copy .zshrc into users home folder

3. Create `private.zsh` for secrets if required

4. `source .zshrc` or restart terminal
