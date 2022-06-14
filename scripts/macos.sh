#!/bin/zsh
export $(grep -v '^#' ./config/.colors | xargs)
printf "${YELLOW}Installing Homebrew...${NORMAL}\n"

# Save screenshots to the desktop
# defaults write com.apple.screencapture location -string "${HOME}/Library/Mobile Documents/com~apple~CloudDocs/Screenshots"
defaults write com.apple.screencapture location -string "${HOME}/Pictures/SCREENSHOTS"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "jpg"

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Set Desktop as the default location for new Finder windows
# For other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTarget -string "PfDe"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/Desktop/"


printf "${GREEN}MacOS Settings Done. Note that some of these changes require a logout/restart to take effect. OR Relaunch finder${NORMAL}\n"