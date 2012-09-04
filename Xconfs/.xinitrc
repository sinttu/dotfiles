conky | while read -r; do xsetroot -name "$REPLY"; done &
xbindkeys &
while true 
do
	bat-degradation 
	sleep 1h	
done &

if [ -f ~/.Xsession ] ; then
	source ~/.Xsession
fi

export LC_CTYPE=fi_FI.UTF-8
export LANG=en_US.UTF-8

xset -b

exec dwm
