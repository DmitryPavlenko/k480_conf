#!/usr/bin/env sh

DIR=/opt/bin
mkdir -p $DIR

cp k480.sh $DIR/k480.sh
cp k480_conf $DIR/k480_conf
cp 99-k480.rules /etc/udev/rules.d
chmod 755 $DIR/k480.sh
chmod 755 $DIR/k480_conf
chmod 644 /etc/udev/rules.d/99-k480.rules
