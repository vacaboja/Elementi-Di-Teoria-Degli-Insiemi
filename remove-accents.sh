#!/bin/bash

for A in "$@"
do
	B=`mktemp`
	cat "$A" |
		sed "s/á/\\\\\'a/g" |
		sed "s/à/\\\\\`a/g" |
		sed "s/é/\\\\\'e/g" |
		sed "s/è/\\\\\`e/g" |
		sed "s/í/\\\\\'i/g" |
		sed "s/ì/\\\\\`i/g" |
		sed "s/ó/\\\\\'o/g" |
		sed "s/ò/\\\\\`o/g" |
		sed "s/ú/\\\\\'u/g" |
		sed "s/ù/\\\\\`u/g" |
		sed "s/Á/\\\\\'A/g" |
		sed "s/À/\\\\\`A/g" |
		sed "s/É/\\\\\'E/g" |
		sed "s/È/\\\\\`E/g" |
		sed "s/Í/\\\\\'I/g" |
		sed "s/Ì/\\\\\`I/g" |
		sed "s/Ó/\\\\\'O/g" |
		sed "s/Ò/\\\\\`O/g" |
		sed "s/Ú/\\\\\'U/g" |
		sed "s/Ù/\\\\\`U/g" |
		cat > "$B"
	mv "$B" "$A"
done
