#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

ARCH_INSTALL=~/.local/share/arch-install

show_subtext() {
  echo "$1" | tte --frame-rate ${3:-640} ${2:-wipe}
  echo
}

# Install prerequisites
source $ARCH_INSTALL/preflight/aur.sh
source $ARCH_INSTALL/preflight/presentation.sh

# Configuration
show_subtext "Let's install Arch! [1/5]"
source $ARCH_INSTALL/config/config.sh

# Development
show_subtext "Installing terminal tools [2/5]"
source $ARCH_INSTALL/development/terminal.sh
source $ARCH_INSTALL/development/development.sh
source $ARCH_INSTALL/development/vscode.sh

# Updates
show_subtext "Updating system packages [5/5]"
sudo updatedb
sudo pacman -Syu --noconfirm
