#!/bin/bash
# LOGFILE=/tmp/logfilek480sh.log
# echo "RUN: at `date` by `whoami` act $ACTION \$1 $1 DEVPATH $DEVPATH DEVNAME $DEVNAME" >> ${LOGFILE}
# echo "Setting F-keys on for your K480!"

if [ "$ACTION" == "add" ];
then
    # configure k480 ($DEVPATH) at $DEVNAME.
    /opt/bin/k480_conf -d $DEVNAME -f on
fi
