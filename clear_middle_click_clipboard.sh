#!/usr/bin/env bash
#
# Program for automatically clearing middle click paste upon clipboard event.
#
# NOTE: Before running this program, run 'make setup' in this directory.

CLIPNOTIFY_BIN=./clipnotify

if [ ! -f $CLIPNOTIFY_BIN ]; then
    echo "clipnotify bin was not found installed! Run 'make setup' to install it."
    exit 1
fi

# repeat every time a clipboard change occurs
while ./clipnotify; do
    # By default, this will overwrite the "primary" clipboard, which is what
    # is used for middle click
    xclip < empty.txt
done
