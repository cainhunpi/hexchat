#!/bin/sh

if [ -z "$JHBUILD_PREFIX" ]; then
	echo "You must run this within a jhbuild shell."
	exit 1
fi

if [ ! -f $JHBUILD_PREFIX/bin/python ]; then
	echo "You must install python with jhbuild."
	exit 1
fi

rm -rf HexChat.app

$JHBUILD_PREFIX/bin/python $HOME/.local/bin/gtk-mac-bundler hexchat.bundle
