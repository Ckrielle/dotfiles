# Statusbar loop
#while true; do
#   xsetroot -name "$( date +"%F %R" )"
#   sleep 1m    # Update time every minute
#done &

# Autostart section
#pcmanfm & 

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/xprofile" ] && . "${XDG_CONFIG_HOME:-$HOME/.config}/xprofile"

exec dwm
