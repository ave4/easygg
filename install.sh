#!/bin/bash

SCRIPTPATH=`dirname $0`
if [[ `id -u` == "0" ]]; then
DEST="/usr/share/file-manager/actions/"
PREFIX=/opt/easygg/
else
DEST="$HOME/.local/share/file-manager/actions/"
PREFIX="$HOME/.local/bin/easygg"
fi

mkdir -p "$PREFIX" || true
mkdir -p "$DEST" || true
install -D -m 644 "$SCRIPTPATH/svn-gui.desktop" "$DEST"
install -D -m 644 "$SCRIPTPATH/svn-gui-add.desktop" "$DEST"
install -D -m 644 "$SCRIPTPATH/svn-gui-clone.desktop" "$DEST"
install -D -m 755 "$SCRIPTPATH/svn_gui" "$PREFIX"
install -D -m 755 "$SCRIPTPATH/svn_gui_add" "$PREFIX"
install -D -m 755 "$SCRIPTPATH/svn_gui_clone" "$PREFIX"

if [[ `id -u` == "0" ]]; then
sed -i 's!bash -c "$HOME/.local/bin/easygg/svn_gui %d"!/opt/easygg/svn_gui %d!' "/usr/share/file-manager/actions/svn-gui.desktop"
sed -i 's!bash -c "$HOME/.local/bin/easygg/svn_gui_add %d %F"!/opt/easygg/svn_gui_add %d %F!' "/usr/share/file-manager/actions/svn-gui-add.desktop"
sed -i 's!bash -c "$HOME/.local/bin/easygg/svn_gui_clone %d"!/opt/easygg/svn_gui_clone %d!' "/usr/share/file-manager/actions/svn-gui-clone.desktop"
fi
