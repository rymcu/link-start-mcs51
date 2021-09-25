#!/bin/bash
set -u -e -o pipefail

application=$1

if [[ -d $(pwd)/src/$application ]];then
     $(pwd)/src/$application/build.sh
fi
