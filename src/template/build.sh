#!/bin/bash
set -u -e -o pipefail

# clean output
if [[ -d $(pwd)/out/template ]];then
    rm -rf $(pwd)/out/template
fi

# re create 
mkdir -p $(pwd)/out/template

# gc
source sdcc.sh
$sdcc -c $(pwd)/src/template/main.c -o $(pwd)/out/template/main.o


# if dependens more .h files then use -c to  generate rel and compile them at the latest
# sdcc -c ./src/temperature/include/1602.c -o ./src/temperature/lib/ 
# sdcc -c ./src/temperature/include/DS18B20.c -o ./src/temperature/lib/ 
# sdcc -c ./src/temperature/temperature.c -o ./src/temperature/lib/ 
# sdcc  ./src/temperature/lib/1602.rel ./src/temperature/lib/DS18B20.rel ./src/temperature/lib/temperature.rel -o ./out/out.ihx
