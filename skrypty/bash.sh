sudo apt install nala
sudo nala install neofetch
sudo nala install starship
MODULES_DIR="$(dirname "$0")"
bash $MODULES_DIR/starship.sh
cat >>~/.bashrc <<EOF

# ============================
#   NEOFETCH NA START
# ============================
if command -v neofetch >/dev/null 2>&1; then
  neofetch
fi

# ============================
#   STARSHIP PROMPT
# ============================
if command -v starship >/dev/null 2>&1; then
  eval "$(starship init bash)"
fi

# ============================
#   FUNKCJA: konwertuj
# ============================
bashrl() {
  echo "Przeładowuję konfigurację .bashrc..."
  source ~/.bashrc
  echo "Gotowe."
}

# ============================
#   ALIAS: prores
# ============================
alias vidconvert='mkdir -p converted; for f in *.mp4; do base="${f%.mp4}"; echo "Konwertuję: $f"; ffmpeg -i "$f" -c:v prores -profile:v 3 -pix_fmt yuv422p -c:a pcm_s16le "converted/${base}.mov" 2>>converted/errors.log; done; echo "Gotowe! Pliki są w ./converted"'
alias apt='sudo nala'
alias apt-get='sudo nala'
alias update='sudo nala update'
alias upgrade='sudo nala upgrade'
alias updupg='sudo nala update && sudo nala upgrade'
EOF

source ~/.bashrc
