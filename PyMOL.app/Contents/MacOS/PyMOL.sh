#!/bin/sh
# Start PyMOL with a working directoty which the specified file exists
if [ -f "$1" ]; then
    cd $(dirname $1)
fi
/usr/local/bin/pymol $@
