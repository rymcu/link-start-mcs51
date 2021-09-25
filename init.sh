# 1.create project folders
mkdir src out include

# 2.stcgal
pip install stcgal
stcgal --help

# 3.sdcc
unzip tools-sdcc.zip

# 4.copy headers
cp -rf tools-sdcc/include/ $(pwd)/

# 5.test sdcc
$(pwd)/sdcc.sh
sdcc --help
