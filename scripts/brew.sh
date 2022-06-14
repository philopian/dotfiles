#!/usr/bin/zsh

export $(grep -v '^#' ./configs/.colors | xargs)

# Install Homebrew (if not already installed)
if test ! $(which brew); then
  printf "${YELLOW}Installing Homebrew...${NORMAL}\n"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


# Updating brew (if out of date)
printf "\n${YELLOW}Updating homebrew...${NORMAL}\n"
brew update
printf "\n${GREEN}Homebrew installed and up to date!${NORMAL}\n"



# tap
brew tap aws/tap

# Installing packages from brew
printf "\n${YELLOW}Installing Homebrew packages...${NORMAL}\n"
PACKAGES=(
  golang
  jq
  tree
  watchman
  zsh
  zsh-completions
  zsh-syntax-highlighting
  warrensbox/tap/tfswitch
  aws-sam-cli
)
brew install ${PACKAGES[@]}
printf "\n${GREEN}Homebrew packages installed!${NORMAL}\n"


# Install Homebrew Cask
printf "\n${YELLOW}Installing Homebrew Cask...${NORMAL}\n"
brew tap homebrew/cask


# Installing applications via Homebrew cask
printf "\n${YELLOW}Installing applications via Homebrew cask...${NORMAL}\n"
CASK_PACKAGES=(
  appcleaner
  brave-browser
  clipy
  cocoapods
  docker
  figma
  google-chrome
  hyper
  pgadmin4
  postman
  rectangle
  visual-studio-code
)
brew install ${CASK_PACKAGES[@]} --cask
printf "\n${GREEN}Applications via Homebrew cask installed!${NORMAL}\n"


# Install some fonts
printf "\n${YELLOW}Installing some fonts...${NORMAL}\n"
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
brew install font-hack-nerd-font
brew install font-meslo-lg-nerd-font
brew tap homebrew/cask-versions
brew install --cask google-chrome-canary

# Clean it up
printf "\n${YELLOW}Cleaning up homebrew things...${NORMAL}\n"
brew cleanup