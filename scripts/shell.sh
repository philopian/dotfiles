#!/bin/zsh

export $(grep -v '^#' ./configs/.colors | xargs)
export $(grep -v '^#' ./configs/.git-user | xargs)

# Make main the default branch for git
printf "\n${YELLOW}Make main the default branch for git...${NORMAL}\n"


# Setup git profile
git config --global user.name $GIT_USER_NAME
git config --global user.email $GIT_USER_EMAIL
git config --global init.defaultBranch main


# Use Zsh
printf "\n${YELLOW}Set Zsh as default...${NORMAL}\n"
if [ $(echo $SHELL) != "/bin/zsh" ]; then
    chsh -s `which zsh`;
fi


# Install oh-my-zsh
printf "\n${YELLOW}Installing Oh My Zsh...${NORMAL}\n"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh) --skip-chsh"
cd ~/dotfiles

# Fix "insecure directories" warning
sudo chmod -R 755 ~/.oh-my-zsh


# links 
ln -sf ~/dotfiles/shell/.zshrc $HOME/.zshrc
ln -sf ~/dotfiles/shell/.zsh_aliases $HOME/.zsh_aliases
ln -sf ~/dotfiles/shell/.zsh_functions $HOME/.zsh_functions


# Update hyper config
if [[ -a $HOME/.hyper.js ]]; then rm $HOME/.hyper.js; fi
ln ~/dotfiles/configs/.hyper.js $HOME/.hyper.js 