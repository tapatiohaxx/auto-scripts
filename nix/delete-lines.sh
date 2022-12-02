#!/bin/bash

$flieName=$1
$firstLine=$2
$lastLine=$3
$fileLength=wc -l < $flieName

#echo "${1} , ${2} ,${3}"
if [$lastLine -lt $firstLine || $firstLine -gt $flieLength || $lastLine -gt $fileLength ]; then
	echo "invalid line length"
	exit 1
fi

[[ ! -z "$lastLine" ]] && sed '${firstLine},${lastLine}d' $flieName || sed '${firstLine}d' $fileName

