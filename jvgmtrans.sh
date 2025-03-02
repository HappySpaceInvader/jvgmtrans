#!/usr/bin/env bash

usage() {
    echo "Usage: $0 filename.vgm"
	exit 1
}

if [ -z "$1" ]
then
    usage
fi

vgm_file=$1
echo $vgm_file

java -DDEBUG -classpath .:./bin jvgmtrans.Jvgmtrans "$vgm_file" > jvgmtrans.log

