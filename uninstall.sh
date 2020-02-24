#!/usr/bin/env sh

DIR="/opt/bin"

rm $DIR/k480.sh
rm $DIR/k480_conf
rm /etc/udev/rules.d/99-k480.rules 

if [ "$(ls -A $DIR)" ]; then
  echo "$DIR is not empty! Directory removing skipped"
else
  rm -r $DIR
fi

