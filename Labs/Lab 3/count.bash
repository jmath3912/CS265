#!/bin/bash

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

for f in *; do
	if [ -f "$f" ]; then
		lineCount=$(wc -l "$f" | cut --fields=1 --delimiter=' ')
		wordCount=$(wc -w "$f" | cut --fields=1 --delimiter=' ')
  		echo "$f $lineCount $wordCount"
	fi
done

IFS=$SAVEIFS
