if ! pidof "wlsunset" > /dev/null;
then
	wlsunset -T 4500 -g 0.9 &
else
	pkill wlsunset
fi
