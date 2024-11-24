proc="/usr/bin/node /usr/bin/live-server "
if ! pidof $proc > /dev/null;
then 
	echo "starting live preview..."
	live-server > /dev/null &
else
	echo "stopping..."
	kill -9 $(pidof $proc)
fi
