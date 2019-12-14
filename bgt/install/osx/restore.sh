#!/bin/sh
if [ `sysctl -n kern.osrelease | cut -d . -f 1` -lt 9 ]; then
#	echo "Tiger or earlier"
	ditto -rsrc "./Baldur's Gate II" bgt/exec.bak/
else
#	echo "Leopard or newer"
	cp "./Baldur's Gate II" bgt/exec.bak/
fi 
