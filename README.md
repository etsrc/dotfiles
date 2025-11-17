# dotfiles
Tools and settings for personal development environment

## Required Tools
```shell
sudo apt-get update && sudo apt-get install zsh git

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

