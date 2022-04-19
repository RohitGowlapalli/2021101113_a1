#!/bin/bash
read
len=`expr length "$REPLY"`
while [ $len -gt 0 ]
do
    newstring=$newstring${REPLY:$len-1:1}
   len=$((len-1))
done
echo "$newstring"

len=`expr length "$REPLY"`
while [ $len -gt 0 ]
do
    char=${REPLY:$len-1:1}
x=$(printf "%d" "'$char'")
let x=x+1
char1=$(printf "\x$(printf %x $x)")
echo -n  "$char1"
len=$((len-1))
done

echo ""

len=`expr length "$REPLY"`
let len1=($len-2)/2
while [ $len1 -ge 0 ]
do
    newstring3=$newstring3${REPLY:$len1:1}
   len1=$((len1-1))
done
echo -n  "$newstring3"
len=`expr length "$REPLY"`
let len1=($len-2)/2
while [ $len1 -lt $len ]
do
    newstring1=$newstring1${REPLY:$len1+1:1}
   len1=$((len1+1))
done
echo -n "$newstring1"





