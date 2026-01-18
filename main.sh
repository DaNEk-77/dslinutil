#!/usr/bin/env bash

MODULES_DIR="$(dirname "$0")/skrypty"

menu() {
  clear
  echo "==Linuxconinator=="
  echo "1) Bash"
  echo "2) Starship"
  echo "3) Instalacja aplikacji"
  echo "4) Full update"
  echo "0) Wyjście"
  echo -n "Wybierz opcję: "
}
while true; do
  menu
  read -r choice
  case "$choice" in
  1) bash "$MODULES_DIR/bash.sh" ;;
  2) bash "sudo $MODULES_DIR/Starship.sh" ;;
  3) bash "$MODULES_DIR/install_apps.sh" ;;
  4) bash "$MODULES_DIR/update.sh" ;;
  0) exit 0 ;;
  *)
    echo "Nieprawidłowy wybór"
    sleep 1
    ;;
  esac
done
