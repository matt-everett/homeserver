#!/bin/sh

if [ "$(id -u)" != "0" ]; then
    echo "Please run as root." >&2 
    exit 1
fi

. /root/duplicity/envs
duplicity collection-status --archive-dir /root/.cache/duplicity ${1}
