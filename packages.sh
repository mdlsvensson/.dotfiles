#!/bin/bash

sudo pacman -Syu

# Drivers
sudo pacman -S vulkan-radeon lib32-vulkan-radeon libva-mesa-driver libva-utils lib32-mesa

# Arch
sudo pacman -S alacritty flatpak dolphin-emu pcmanfm obs-studio nnn audacity btop fastfetch discord zed github-cli steam paru neovim godot blender qbittorrent gimp vlc snes9x zsh eza lazygit otf-monaspace-nerd ttf-mona-sans zoxide bat

# AUR
yay -S protonup-qt protontricks buku

# Remove KDE bloat
sudo pacman -R konsole dolphin haruna kate kcalc mpv dolphin-plugins mpvqt okular
