#!/bin/sh

# Step zero: Update all packages
sudo pacman -Syu

cd
mkdir github
cd github

# Manually setup Pikaur for AUR support.
pacman -S --needed base-devel git all
git clone https://aur.archlinux.org/pikaur.git
cd pikaur
makepkg -fsri

# Minor requirements
REQ[0]="jsoncpp"     # To help with Polybar
REQ[1]="most"        # For paging, with color!
REQ[2]="feh"         # Wallpaper setter
REQ[3]="w3m"         # In-console image viewer
REQ[4]="highlight"   # Text highlighter you can pipe into


# Major requirements
REQ[5]="i3-gaps"     # Window manager
REQ[6]="xst-git"     # Suckless terminal, now with Xresources
REQ[7]="rofi"        # App launcher
REQ[8]="mksh"        # Shell
REQ[9]="ranger"      # Terminal file manager
REQ[10]="polybar"    # Bar
REQ[11]="deadbeef"   # Audiophile music player.


# Actually install the packages
for package in "${REQ[@]}"
do
    sudo pikaur -S $package --noconfirm
done