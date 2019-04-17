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

# Base requirements
REQ[0]="jsoncpp"     # To help with Polybar
REQ[1]="xclip"       # Helps with copy & paste.
REQ[2]="most"        # For paging, with color!
REQ[3]="feh"         # Wallpaper setter
REQ[4]="w3m"         # In-console image viewer
REQ[5]="highlight"   # Text highlighter you can pipe into
REQ[6]="hblock"      # System-level ad domain blocking.
REQ[7]="exa"         # Better implementation of LS, written in Rust.
REQ[8]="gotop"       # Replacement to top, written in Go.
REQ[9]="pywal"       # Color theme generation.

# Terminal Applications
REQ[9]="ranger"      # Terminal file manager

# GTK/QT Applications
REQ[11]="deadbeef"   # Audiophile music player.
REQ[11]="vscodium"   # IDE with Microsoft's binaries removed.
REQ[11]="firefox"    # Web browser, of course.

# Major requirements
REQ[5]="i3-gaps"     # Window manager
REQ[6]="alacritty"   # GPU-driven terminal
REQ[7]="rofi"        # App launcher
REQ[8]="mksh"        # Shell
REQ[10]="polybar"    # Bar


# Actually install the packages
for package in "${REQ[@]}"
do
    sudo pikaur -S $package --noconfirm
done

# Initialize things that need to be initialized.
hblock