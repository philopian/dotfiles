#!/usr/bin/zsh

export $(grep -v '^#' ./config/.colors | xargs)

# Install Homebrew (if not already installed)
if test ! $(which brew); then
  printf "${YELLOW}Installing Homebrew...${NORMAL}\n"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


# Updating brew (if out of date)
printf "\n${YELLOW}Updating homebrew...${NORMAL}\n"
brew update
printf "\n${GREEN}Homebrew installed and up to date!${NORMAL}\n"


# Installing optional applications via Homebrew cask
printf "\n${YELLOW}Installing optional applications via Homebrew cask...${NORMAL}\n"
CASK_PACKAGES=(
  google-earth-pro
  libreoffice
  macpass
  powerphotos
  qgis
  ytmdesktop-youtube-music
  zoom
  handbrake
)
brew install ${CASK_PACKAGES[@]} --cask

brew install --cask obsidian
brew install --cask raycast
brew install --cask ytmdesktop-youtube-music
brew install --cask vlc
brew install --cask framer
printf "\n${GREEN}Applications via Homebrew cask installed!${NORMAL}\n"


