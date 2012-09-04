conky | while read -r; do xsetroot -name "$REPLY"; done &
xbindkeys &
while true 
do
	bat-degradation 
	sleep 1h	
done &

setxkbmap -option "nbsp:none"

# Map caps lock to esc, must be mapped as last
xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

if [ -f ~/.Xsession ] ; then
	source ~/.Xsession
fi

export LC_CTYPE=fi_FI.UTF-8
export LANG=en_US.UTF-8

xset -b

exec dwm
