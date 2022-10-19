#!/bin/bash
grep '^[[0-9]\{3\}\-[0-9]\{3\}\-]*[0-9]\{4\}[ ][x|X][0-9]\{4\}' $1
echo ----------------------------------------
grep '^[0-9]\{3\}[ ]' $1
echo ----------------------------------------
grep -i '^[a-z]\{3\}\.[ 0-9]*\,[ 0-9]*' $1
echo ----------------------------------------
grep '\([aeiou]\).\1' $1
echo ----------------------------------------
grep '^[^S]' $1
echo ----------------------------------------
grep '[cC][aA]' $1
echo ----------------------------------------
grep -n '@' $1
echo ----------------------------------------
grep -v 'Sep\.' $1
echo ----------------------------------------
grep -w 'de' $1
echo ----------------------------------------