rm -rf ~/.config/starship.toml
touch ~/.config/starship.toml
cat >>~/.config/starship.toml <<EOF

# ============================
#   GREEN CTT POWERLINE STYLE
#   Stabilny, czytelny, elegancki
# ============================

format = """
$username[](bg:#2E7D32 fg:#1B5E20)\
$directory[](bg:#388E3C fg:#2E7D32)\
$git_branch$git_status[](bg:#43A047 fg:#388E3C)\
$time[](fg:#43A047)\
\n$character
"""

# ============================
#   MODULES
# ============================

[username]
show_always = true
style_user = "bg:#1B5E20 fg:#E8F5E9"
style_root = "bg:#C62828 fg:#FFFFFF"
format = "[$user]($style)"

[directory]
style = "bg:#2E7D32 fg:#E8F5E9"
format = "[ $path ]($style)"
truncation_length = 3
truncation_symbol = "…/"

[git_branch]
symbol = ""
style = "bg:#388E3C fg:#1B1F1B"
format = "[ $symbol $branch ]($style)"

[git_status]
style = "bg:#388E3C fg:#1B1F1B"
format = "[ $all_status$ahead_behind ]($style)"

[time]
disabled = false
time_format = "%H:%M"
style = "bg:#43A047 fg:#1B1F1B"
format = "[ 󰃰 $time ]($style)"

[character]
success_symbol = "[](bold green)"
error_symbol   = "[](bold red)"
vicmd_symbol   = "[](bold yellow)"
EOF
sudo apt install starship
