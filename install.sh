#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

OKARCHY_INSTALL=~/.local/share/okarchy/install

show_subtext() {
  echo "$1" | tte --frame-rate ${3:-640} ${2:-wipe}
  echo
}

# Install prerequisites
source $OKARCHY_INSTALL/preflight/aur.sh
source $OKARCHY_INSTALL/preflight/presentation.sh

# Configuration
show_subtext "Let's install Okarchy! [1/5]"
source $OKARCHY_INSTALL/config/config.sh

# Development
show_subtext "Installing terminal tools [2/5]"
source $OKARCHY_INSTALL/development/terminal.sh
source $OKARCHY_INSTALL/development/development.sh
source $OKARCHY_INSTALL/development/vscode.sh

# Desktop
show_subtext "Installing desktop tools [3/5]"
source $OKARCHY_INSTALL/desktop/fonts.sh
source $OKARCHY_INSTALL/desktop/printer.sh

# Updates
show_subtext "Updating system packages [5/5]"
sudo updatedb
sudo pacman -Syu --noconfirm
