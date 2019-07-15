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
REQ[3]="dash"        # Limited, fast terminal emulator

# Theming Applications
REQ[3]="pywal"       # Color theme generation.
REQ[4]="wpgtk-git"   # Color theme generation for GTK; uses Pywal

# Misc Applications
REQ[5]="hblock"      # System-level ad domain blocking.
REQ[6]="w3m"         # In-console image viewer
REQ[7]="feh"         # Wallpaper setter
REQ[8]="redshift"    # Bluelight filter

# Terminal Applications
REQ[9]="ranger"      # Terminal file manager
REQ[10]="gotop"      # Replacement to top, written in Go.
REQ[11]="exa"        # Better implementation of LS, written in Rust.
REQ[12]="most"       # For paging, with color!
REQ[13]="neofetch"   # System info in the terminal

# GTK/QT Applications
REQ[14]="vscodium"   # IDE with Microsoft's binaries removed.
REQ[15]="firefox"    # Web browser, of course.

# Major requirements
REQ[16]="kitty-git"  # GPU-driven terminal
REQ[17]="rofi"       # App launcher
REQ[18]="zsh"        # Shell
REQ[19]="oh-my-zsh"  # Shell extensions
REQ[20]="polybar"    # Bar

# Fonts
REQ[21]="nerd-fonts-complete"  # Includes Hack, Font Awesome, and more



# Actually install the packages
for package in "${REQ[@]}"
do
    sudo pikaur -S $package --noconfirm
done

# Initialize things that need to be initialized.
hblock
