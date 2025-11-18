#!/bin/bash
# script to install thunderbird.
# this script is run by postinst after a delay.
echo "========================================================="
echo "installing thunderbird"
echo "========================================================="
apt install thunderbird thunderbird-locale-en -y 

echo "========================================================="
echo "installing thunderbird has completed"
echo "========================================================="
exit 0;
