#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "Please run as root." >&2
    exit 1
fi

logfile="/var/log/snapshot.log"
snapshotName="${1}@$(date +'%Y-%m-%d')"
echo "========================================" | tee >> ${logfile}
echo "Creating snapshot ${snapshotName}" | tee >> ${logfile}
echo "========================================" | tee >> ${logfile}
zfs snapshot ${snapshotName} 2>&1 | tee >> ${logfile}
zfs list ${snapshotName} 2>&1 | tee >> ${logfile}
echo "" | tee >> ${logfile}
