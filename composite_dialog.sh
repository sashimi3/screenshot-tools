#!/bin/bash
WORKDIR=$(pwd)
cd $(dirname $0)
for file in `find ${WORKDIR} -iname '*.png' -maxdepth 1 -type f`; do
    composite -gravity northeast -compose over ./assets/1234_behind_dialog.png $file $file;
done
