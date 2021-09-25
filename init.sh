mkdir src out include

# stcgal
pip install stcgal
stcgal --help

# sdcc
unzip sdcc-sdk.zip
mv sdcc tools-sdcc
rm -rf sdcc-sdk.zip