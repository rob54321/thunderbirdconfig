#!/bin/bash
# script to install thunderbird.
# this script is run by postinst after a delay.
echo "========================================================="
echo "installing thunderbird"
echo "========================================================="
while fuser /var/lib/dpkg/lock-frontend; do
	echo "install-thunderbird is waiting for the dpkg lock..."
	sleep 3
done;

apt install thunderbird thunderbird-locale-en -y 

echo "========================================================="
echo "installing thunderbird has completed"
echo "========================================================="
exit 0;
