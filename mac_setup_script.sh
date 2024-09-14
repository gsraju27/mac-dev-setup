#!/bin/bash

# Automated Mac Setup Script
# This script automates the setup process for a new Mac, installing common tools and applications.
# Run this script with: bash mac_setup_script.sh

# Function to print section headers
print_header() {
    echo "----------------------------------------"
    echo "$1"
    echo "----------------------------------------"
}

# Check if Homebrew is installed, install if it's not
install_homebrew() {
    if ! command -v brew &> /dev/null; then
        print_header "Installing Homebrew"
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
        eval "$(/opt/homebrew/bin/brew shellenv)"
    else
        echo "Homebrew is already installed."
    fi
}

# Install Homebrew packages
install_brew_packages() {
    print_header "Installing Homebrew packages"
    brew install git yarn prettier python awscli gnupg elixir tfenv
    brew install --cask google-chrome visual-studio-code pycharm tableplus docker slack postman notion microsoft-outlook mimestream adobe-acrobat-pro raycast figma studio-3t 1password chatgpt telegram screen-studio discord whatsapp
    brew install amazon-q
}

# Install Node Version Manager (NVM) and Node.js
install_node() {
    print_header "Installing NVM and Node.js"
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    nvm install stable
}

# Configure Git
configure_git() {
    print_header "Configuring Git"
    read -p "Enter your full name for Git: " git_name
    read -p "Enter your email for Git: " git_email
    git config --global user.name "$git_name"
    git config --global user.email "$git_email"
}

# Setup GPG for commit signing
setup_gpg() {
    print_header "Setting up GPG for commit signing"
    echo "Please follow the manual steps for GPG setup as described in the documentation."
    echo "After completing the manual steps, press Enter to continue."
    read -p ""
}

# Setup SSH key
setup_ssh() {
    print_header "Setting up SSH key"
    read -p "Enter your email for SSH key: " ssh_email
    ssh-keygen -t ed25519 -C "$ssh_email"
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_ed25519
    echo "Your public SSH key has been copied to the clipboard. Add it to your GitHub account."
    pbcopy < ~/.ssh/id_ed25519.pub
    echo "Press Enter after adding the SSH key to your GitHub account."
    read -p ""
}

# Main execution
main() {
    install_homebrew
    install_brew_packages
    install_node
    configure_git
    setup_gpg
    setup_ssh

    print_header "Setup Complete"
    echo "Your Mac has been set up with common development tools and applications."
    echo "Some manual steps may be required for GPG and SSH setup. Please refer to the documentation."
    echo "Remember to restart your terminal or run 'source ~/.zprofile' to apply all changes."
}

# Run the main function
main