#!/bin/bash

# Clone alias
git clone git@github.com:anhqqt/alias.git

# Install iTerm2
brew install --cask iterm2

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install fonts
curl -o ~/Library/Fonts/MesloLGS NF Regular.ttf https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/MesloLGS%20NF%20Regular.ttf
curl -o ~/Library/Fonts/MesloLGS NF Italic.ttf https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/MesloLGS%20NF%20Bold.ttf
curl -o ~/Library/Fonts/MesloLGS NF Bold.ttf https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/MesloLGS%20NF%20Italic.ttf
curl -o ~/Library/Fonts/MesloLGS NF Bold Italic.ttf https://raw.githubusercontent.com/romkatv/powerlevel10k-media/master/MesloLGS%20NF%20Bold%20Italic.ttf

# Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Copy my .zshrc
rm -rf ~/.zshrc
cp ~/alias/.zshrc ~/.zshrc

# Copy .p10k.zsh
rm -rf ~/.p10k.zsh
cp ~/alias/.p10k.zsh ~/.p10k.zsh

# Install zsh-autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install zsh-you-should-get
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use

# Config SSH
mkdir .ssh
cp ~/alias/ssh_config ~/.ssh/config

# Get Katalon SSH Public Key
op read --account 5PKS2C7FJFHRJK4UVQ257PZ6QU op://private/xdv5fjwaint2xamugq7427lale/public_key > ~/.ssh/katalon-ssh-key.pub