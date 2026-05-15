#!/bin/bash
set -e

echo "🚀 Bootstraping dotfiles..."

install_chezmoi() {
    if ! command -v chezmoi &>/dev/null; then
        echo "📦 Installing chezmoi..."
        if command -v brew &>/dev/null; then
            brew install chezmoi
        elif command -v apt &>/dev/null; then
            sudo apt install -y chezmoi
        else
            sh -c "$(curl -fsLS get.chezmoi.io)"
        fi
    fi
}

install_chezmoi

echo "📁 Initializing dotfiles..."
chezmoi init https://github.com/hawk0120/dots.git

echo "✅ Dotfiles initialized. Run 'chezmoi apply' to apply."
