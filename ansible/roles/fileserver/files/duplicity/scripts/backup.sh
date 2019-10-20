#!/bin/sh

if [ "$(id -u)" != "0" ]; then
    echo "Please run as root." >&2 
    exit 1
fi

. /root/duplicity/envs
echo '==================================================' >> /var/log/duplicity.log
echo "Backup ${1}" >> /var/log/duplicity.log
echo '==================================================' >> /var/log/duplicity.log
duplicity --no-encryption --archive-dir /root/.cache/duplicity ${1} ${2} 2>&1 >> /var/log/duplicity.log
