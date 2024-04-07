#!/bin/bash

# Cronjob 10 min
# */10 * * * * /bin/bash /Users/fhs/mica-ucu/ejercicio_3/ejercicio_3.sh 10000 >/tmp/stdout.log 2>/tmp/stderr.log

threshold_mb="$1"
available_disk_space_mb=$(df -bm / | awk '$NF=="/" {print $4}')

if [ "$available_disk_space_mb" -lt "$threshold_mb" ]
then
    echo "WARNING: Available disk space ($available_disk_space_mb MB) is less than threshold ($threshold_mb MB)"
else
    echo "OK: there is enough space in disk ($available_disk_space_mb MB), alert threshold is set to $threshold_mb MB"
fi

