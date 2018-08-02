#!/bin/bash
mkdir -p /opt/bin

cp k480.sh /opt/bin/k480.sh
cp k480_conf /opt/bin/k480_conf
cp 99-k480.rules /etc/udev/rules.d
chmod 755 /opt/bin/k480.sh
chmod 755 /opt/bin/k480_conf
chmod 644 /etc/udev/rules.d/99-k480.rules
