#!/bin/bash
NAME="PyMOL.app"

rm -r $NAME

echo "Compiling AppleScript into $NAME ..."
osacompile -x -o $NAME ./Scripts/PyMOL.scpt

echo "Coping required files into $NAME ..."
cp Resources/Info.plist $NAME/Contents/Info.plist
cp Resources/PyMOL.icns $NAME/Contents/Resources/PyMOL.icns
cp Resources/PyMOL.icns $NAME/Contents/Resources/PDB.icns
cp Scripts/PyMOL.sh     $NAME/Contents/MacOS/PyMOL.sh

echo "Renaming required files in $NAME ..."
mv $NAME/Contents/MacOS/droplet             $NAME/Contents/MacOS/PyMOL
mv $NAME/Contents/Resources/droplet.rsrc    $NAME/Contents/Resources/PyMOL.rsrc

echo "Removing unnecessary files from $NAME ..."
rm $NAME/Contents/Resources/droplet.icns

echo "Refreshing lsregister"
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -f $NAME

echo "Done."
