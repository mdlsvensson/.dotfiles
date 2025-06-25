#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Update system
echo "Checking for updates..."
sudo pacman -Syu --noconfirm

# Installing drivers
echo "Installing AMD graphics drivers..."
sudo pacman -S --noconfirm \
    vulkan-radeon \
    lib32-vulkan-radeon \
    libva-mesa-driver \
    libva-utils \
    lib32-mesa

# Install packages
echo "Installing packages (pacman)..."
sudo pacman -S --noconfirm \
    alacritty \
    flatpak \
    pcmanfm \
    obs-studio \
    nnn \
    audacity \
    btop \
    fastfetch \
    discord \
    zed \
    github-cli \
    steam \
    paru \
    neovim \
    godot \
    blender \
    qbittorrent \
    gimp \
    vlc \
    snes9x \
    zsh \
    eza \
    lazygit \
    otf-monaspace-nerd \
    ttf-mona-sans \
    zoxide \
    bat \
    code \
    pandoc-cli \
    rocm-smi-lib \
    uv \
    radeontop \
    hyprland \
    uwsm \
    libnewt \
    rofi-wayland \
    dunst \
    xdg-desktop-portal-hyprland \
    xdg-desktop-portal-gtk \
    hyprpolkitagent \
    qt5-wayland \
    qt6-wayland \
    hyprpaper

echo "Installing packages (yay)..."
yay -S --noconfirm \
    protonup-qt \
    protontricks \
    buku \
    hyprls

echo "Script completed without errors"
