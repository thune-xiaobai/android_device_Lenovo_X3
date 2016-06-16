#!/bin/bash

VENDOR=Lenovo
DEVICE=X3

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary
rm -rf $BASE/*

for FILE in `cat proprietary-files.txt | grep -v ^# | grep -v ^$ | sed -e 's#^/system/##g'`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    cp  /home/crancocco/libra/x3/vibeui/system/$FILE $BASE/$FILE
    #echo "Copy file $FILE done"
done

./setup-makefiles.sh
