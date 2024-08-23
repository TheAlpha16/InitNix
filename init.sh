#!/bin/sh

USER="alpha"

# Initial updates
sudo apt update
sudo apt upgrade
sudo apt install -y curl wget zsh

# # OhMyZSH config
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sed -i "s/robbyrussell/powerlevel10k\/powerlevel10k/" /home/$USER/.zshrc 
cp ./.p10k.zsh $HOME/.p10k.zsh

# Alias
echo "alias cl='clear'" >> $HOME/.zshrc
echo "alias ll='ls -la'" >> $HOME/.zshrc
echo "alias l='ls'" >> $HOME/.zshrc
