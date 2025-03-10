#!/bin/bash

# Array of packages
packages=(
  fd
  ripgrep
  lazygit
  fzf
  kubectl
  kubectx
  direnv
  kubectl-cnpg
  stow
)

# Iterate over the array and install each package
for package in "${packages[@]}"; do
  echo "Installing $package..."
  /home/linuxbrew/.linuxbrew/bin/brew install "$package"
done

echo "All packages have been installed."

# Create symlinks for existing configurations
stow .

# Set up completions
mkdir -p "$HOME/.zfunc
kubectl completion zsh > $HOME/.zfunc/_kubectl
helm completion zsh > $HOME/.zfunc/_helm
