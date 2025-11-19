#!/bin/bash
# script to install thunderbird.
# this script is run by postinst after a delay.
echo "========================================================="
echo "installing thunderbird"
echo "========================================================="
# wait for lock to become available or timeout in seconds
TIMEOUT=3;

while [[ fuser /var/lib/dpkg/lock-frontend && ${TIMEOUT} -gt 0 ]]; do
	echo "install-thunderbird is waiting for the dpkg lock..."
	# decrement timeout
	TIMEOUT=$((TIMEOUT - 1))
	echo "TIMEOUT = ${TIMEOUT}"
	sleep 1
done;

# check if the time out occured or not
if test fuser /var/lib/dpkg/lock-frontend; then
	# lock not available
	echo "Thunderbird not installed...timed out"
else
	# operation
	echo "Installing thunderbird"
	apt install thunderbird thunderbird-locale-en -y 
fi

echo "========================================================="
echo "installing thunderbird has completed"
echo "========================================================="
exit 0;
