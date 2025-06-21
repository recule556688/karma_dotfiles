#!/bin/bash
set -e

# ===== CONFIGURATION =====
KARMA_REPO_URL="https://github.com/recule556688/karma_dotfiles.git"
KARMA_CLONE_DIR="karma_dotfiles"
DOTFILES_TARGET="$HOME/dotfiles"
DOTFILES_BACKUP="$HOME/dotfiles_bak_$(date +%s)"

# ===== FONCTIONS =====

install_yay_and_ml4w() {
    echo "🔧 Installation de yay et ML4W Hyprland..."

    sudo pacman -Sy --noconfirm git base-devel

    if ! command -v yay &> /dev/null; then
        git clone https://aur.archlinux.org/yay.git
        cd yay
        makepkg -si --noconfirm
        cd ..
        rm -rf yay
    else
        echo "✅ yay est déjà installé"
    fi

    echo "📦 Installation de ML4W Hyprland..."
    yay -S --noconfirm ml4w-hyprland ml4w-hyprland-setup

    echo "🚀 Lancement du setup ML4W..."
    ml4w-hyprland-setup

    echo "✅ ML4W installé. Tu peux relancer ce script pour installer tes dotfiles perso."
}

install_karma_dotfiles() {
    echo "📁 Installation des dotfiles perso de Karma..."

    echo "🔁 Clonage du dépôt..."
    git clone "$KARMA_REPO_URL" "$KARMA_CLONE_DIR"

    echo "💾 Sauvegarde d'éventuels anciens dotfiles..."
    if [ -d "$DOTFILES_TARGET" ]; then
        mv "$DOTFILES_TARGET" "$DOTFILES_BACKUP"
        echo "    -> Backup : $DOTFILES_BACKUP"
    fi

    echo "📂 Copie des nouveaux dotfiles..."
    cp -r "$KARMA_CLONE_DIR" "$DOTFILES_TARGET"

    echo "✅ Tes dotfiles sont installés dans ~/dotfiles"
    echo "ℹ️ Pense à rebooter ou relancer Hyprland pour voir les changements"
}

# ===== MENU =====

echo "╭────────────────────────────────────────────╮"
echo "│           🧠 Script d'install Karma         │"
echo "╰────────────────────────────────────────────╯"
echo "1. Installer yay + ML4W dotfiles (Hyprland)"
echo "2. Installer mes dotfiles perso (karma_dotfiles)"
echo "3. Quitter"
echo
read -rp "Sélectionne une option [1-3] : " choice

case "$choice" in
    1) install_yay_and_ml4w ;;
    2) install_karma_dotfiles ;;
    3) echo "👋 Bye !" && exit 0 ;;
    *) echo "❌ Option invalide" && exit 1 ;;
esac
