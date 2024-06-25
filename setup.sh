#!/bin/bash

# Enable strict mode
set -euo pipefail

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print an error message and exit with a non-zero status.
error_exit() {
  echo -e "${RED}Error: $1${NC}" >&2
  exit 1
}

# Function to print an informational message.
info_msg() {
  echo -e "${BLUE}$1${NC}"
}

# Function to print a success message.
success_msg() {
  echo -e "${GREEN}$1${NC}"
}

# Function to print a warning message.
warning_msg() {
  echo -e "${YELLOW}$1${NC}"
}

# Function to print an error message and exit with a non-zero status.
error_exit() {
  echo "Error: $1" >&2
  exit 1
}

# Function to check if Nix is already installed
check_nix_installed() {
  if command -v nix >/dev/null 2>&1; then
    success_msg "Nix is already installed."
    exit 0
  fi
}

# Function to detect the operating system
detect_os() {
  case "$(uname -s)" in
    Linux*)     OS=Linux;;
    Darwin*)    OS=macOS;;
    CYGWIN*|MINGW*|MSYS*) OS=Windows;;
    *)          OS="UNKNOWN:${unameOut}"
  esac
  echo ${OS}
}

# Function to install Nix on macOS
install_nix_mac() {
  info_msg "Installing Nix on macOS..."
  if curl -L https://nixos.org/nix/install | sh; then
    success_msg "Installation complete."
  else
    error_exit "Failed to install Nix on macOS."
  fi
}

# Function to install Nix on Linux
install_nix_linux() {
  info_msg "Installing Nix on Linux..."
  if curl -L https://nixos.org/nix/install | sh -s -- --daemon; then
    success_msg "Installation complete."
  else
    error_exit "Failed to install Nix on Linux."
  fi
}

# Function to install Nix on Windows (WSL)
install_nix_windows() {
  info_msg "Installing Nix on Windows (WSL)..."
  if curl -L https://nixos.org/nix/install | sh -s -- --no-daemon; then
    success_msg "Installation complete."
  else
    error_exit "Failed to install Nix on Windows (WSL)."
  fi
}

# Main function to install Nix based on the operating system
install_nix() {
  OS=$(detect_os)
  case "${OS}" in
    macOS)      install_nix_mac;;
    Linux)    install_nix_linux;;
    Windows)  install_nix_windows;;
    *)        error_exit "Unsupported OS: ${OS}";;
  esac
}

# Function to verify Nix installation
verify_nix_installation() {
  if command -v nix >/dev/null 2>&1; then
    success_msg "Nix installation was successful."
  else
    error_exit "Nix installation verification failed."
  fi
}

check_nix_installed
install_nix
verify_nix_installation