#!/bin/bash
awk 'NF' quotes.txt | awk -F'~' '{print $2}' > test1.txt
awk 'NF' test1.txt |awk -F'~' '{print $1}' |awk '{print "\""$0"\""}'|sed -e 's_.*_ once said ,&_' > test2.txt
paste -d '' test1.txt test2.txt > speech.txt
