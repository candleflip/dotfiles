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

#### 3. Install and configure Alacritty

```bash
brew install --cask alacritty
brew install font-meslo-lg-nerd-font
```

#### 2. Install Git, Stow, Eza, Oh My Zsh

```bash
brew install git stow eza neovim powerlevel10k node
```

#### 3. Clone dotfiles repo from Git

```bash
git clone https://github.com/candleflip/dotfiles.git
```


Add Alacritty configuration from dotfiles.

<!-- #### 2. Install and configure iTerm2 (will be deprecated in favor of Alacritty) -->
<!---->
<!-- ```bash -->
<!-- brew install --cask iterm2 -->
<!-- ``` -->
<!---->
<!-- Download catpuccin theme: -->

