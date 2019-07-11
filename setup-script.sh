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
REQ[2]="highlight"   # Text highlighter you can pipe into

# Windowing
REQ[3]="i3-gaps"     # Window manager
REQ[4]="compton"     # Compositor

# Theming Applications
REQ[5]="pywal"       # Color theme generation.
REQ[6]="wpgtk-git"   # Color theme generation for GTK; uses Pywal

# Misc Applications
REQ[7]="hblock"      # System-level ad domain blocking.
REQ[8]="w3m"         # In-console image viewer
REQ[9]="feh"         # Wallpaper setter
REQ[10]="redshift"   # Bluelight filter

# Terminal Applications
REQ[11]="ranger"     # Terminal file manager
REQ[12]="gotop"      # Replacement to top, written in Go.
REQ[13]="exa"        # Better implementation of LS, written in Rust.
REQ[14]="most"       # For paging, with color!
REQ[15]="neofetch"   # System info in the terminal

# GTK/QT Applications
REQ[16]="vscodium"   # IDE with Microsoft's binaries removed.
REQ[17]="firefox"    # Web browser, of course.

# Major requirements
REQ[18]="kitty-git"  # GPU-driven terminal
REQ[19]="rofi"       # App launcher
REQ[20]="zsh"        # Shell
REQ[21]="oh-my-zsh"  # Shell extensions
REQ[22]="polybar"    # Bar


# Actually install the packages
for package in "${REQ[@]}"
do
    sudo pikaur -S $package --noconfirm
done

# Initialize things that need to be initialized.
hblock