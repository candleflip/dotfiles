# Manual installation

#### 1. Install Homebrew

First command requires password twice.
Other two commands add Homebrew to the PATH.
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/sergei.svechnikov/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Update Homebrew:
```bash
brew update
```

#### 2. Install and configure Alacritty

```bash
brew install --cask alacritty
brew install font-meslo-lg-nerd-font
```

#### 3. Install Git, Stow, Eza, Oh My Zsh

```bash
brew install git stow eza neovim node tmux fzf lazygit tree ripgrep fd
```


```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Inside tmux session call <C-s>I to install all plugins from ~/.tmux.conf

#### 5. Install Timuxifier

```bash
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
```

#### 6. Install and configure p10k

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo "source ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
p10k configure
```


```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
#### 7. Clone dotfiles repo from Git

```bash
git clone https://github.com/candleflip/dotfiles.git
```


Add Alacritty configuration from dotfiles.

