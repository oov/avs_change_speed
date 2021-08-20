#!/bin/bash

rm -rf bin release/avs_change_speed_wip.zip
mkdir -p bin release

# update version string
VERSION='v0.1'
GITHASH=`git rev-parse --short HEAD`

# copy readme
sed 's/\r$//' README.md | sed 's/\$VERSION\$/'$VERSION'/' | sed 's/\$GITHASH\$/'$GITHASH'/' | sed 's/$/\r/' > bin/readme.txt

# copy batch files
sed 's/\r$//' src/template.txt | sed 's/\$VERSION\$/'$VERSION'/' | sed 's/\$GITHASH\$/'$GITHASH'/' | sed 's/$/\r/' > bin/template.txt
sed 's/\r$//' src/genavs.bat | sed 's/\$VERSION\$/'$VERSION'/' | sed 's/\$GITHASH\$/'$GITHASH'/' | sed 's/$/\r/' > bin/genavs.bat
sed 's/\r$//' src/x0.125.bat | sed 's/$/\r/' > bin/x0.125.bat
sed 's/\r$//' src/x0.25.bat | sed 's/$/\r/' > bin/x0.25.bat
sed 's/\r$//' src/x0.5.bat | sed 's/$/\r/' > bin/x0.5.bat
sed 's/\r$//' src/x1.bat | sed 's/$/\r/' > bin/x1.bat
sed 's/\r$//' src/x2.bat | sed 's/$/\r/' > bin/x2.bat
sed 's/\r$//' src/x4.bat | sed 's/$/\r/' > bin/x4.bat
sed 's/\r$//' src/x8.bat | sed 's/$/\r/' > bin/x8.bat
sed 's/\r$//' src/x16.bat | sed 's/$/\r/' > bin/x16.bat
sed 's/\r$//' src/calc.html | sed 's/$/\r/' > bin/calc.html

cd bin
zip ../release/avs_change_speed_wip.zip readme.txt calc.html template.txt genavs.bat x0.125.bat x0.25.bat x0.5.bat x1.bat x2.bat x4.bat x8.bat x16.bat
cd ..
