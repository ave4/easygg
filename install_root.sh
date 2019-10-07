#!/bin/bash

SCRIPTPATH=`dirname $0`
if [ -z $1 ]; then
PREFIX=/opt/easygg/
else
PREFIX="$1"
fi

if [[ `id -u` == "0" ]]; then
DEST="/usr/share/file-manager/actions/"
else
DEST="$HOME/.local/share/file-manager/actions/"
fi

mkdir -p "$PREFIX" || true
mkdir -p "$DEST" || true
install -D -m 644 "$SCRIPTPATH/git-gui.desktop" "$DEST"
install -D -m 644 "$SCRIPTPATH/git-gui-add.desktop" "$DEST"
install -D -m 644 "$SCRIPTPATH/git-gui-clone.desktop" "$DEST"
install -D -m 644 "$SCRIPTPATH/git_gui" "$PREFIX"
install -D -m 644 "$SCRIPTPATH/git_gui_add" "$PREFIX"
install -D -m 644 "$SCRIPTPATH/git_gui_clone" "$PREFIX"