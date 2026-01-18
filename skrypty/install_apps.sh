#!/usr/bin/env bash
apt update
apt install nala
nala update
echo "=== Instalacja aplikacji ==="
APPSAPT=(
  htop
  neofetch
  curl
  git
  starship
  flatpak
  gnome-software-plugin-flatpak
)
APPSFLAT=(
  firefox
  steam
)
nala install -y "${APPSAPT[@]}"

flathub
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
chmod u+x nvim-linux-x86_64.appimage
./nvim-linux-x86_64.appimage
mkdir -p /opt/nvim
mv nvim-linux-x86_64.appimage /opt/nvim/nvim
echo "export PATH="$PATH:/opt/nvim/"" >>~/.bashrc

#lazyvim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

echo "Zainstalowano!"
sleep 1
