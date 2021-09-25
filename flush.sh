#!/bin/bash
set -u -e -o pipefail

# if you don't want to input the third params ,you would set this path to your usb
defaultUSB=/dev/tty.usbserial-14120

application=false
bin=false
usb=false

for ARG in "$@"; do
  case "$ARG" in
  -a)
    application=$2
    ;;
  -b)
    bin=$4
    ;;
  esac
done


if [[  $application == false ]];then
    1>&2 echo "ERROR: you must input an application name!" 
    exit
fi

if [[  $bin == false ]];then
    1>&2 echo "ERROR: you must input the binary name of the application!"
    exit
fi

 if [[  $usb == false ]];then
    echo "WARN: use default usb path $defaultUSB"
    stcgal -a -P stc89 -b 9600 -p /dev/tty.usbserial-14120 $(pwd)/out/$application/$bin
    echo "SUCCESS: flush over"
 else
    stcgal -a -P stc89 -b 9600 -p $defaultUSB $(pwd)/out/$application/$bin
    echo "SUCCESS: flush over"
 fi


