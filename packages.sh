#!/bin/bash

sudo pacman -Syu

# Drivers
sudo pacman -S vulkan-radeon lib32-vulkan-radeon libva-mesa-driver libva-utils lib32-mesa

# Arch
sudo pacman -S lutris alacritty flatpak dolphin-emu awesome pcmanfm nnn xclip audacity btop fastfetch discord zed github-cli picom steam paru neovim feh godot blender qbittorrent gimp vlc snes9x zsh eza lazygit otf-monaspace-nerd ttf-mona-sans zoxide bat rofi-calc

# AUR
yay -S bottles protonup-qt gruvbox-plus-icon-theme gruvbox-dark-gtk protontricks buku rofi-buku-git
