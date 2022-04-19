#!/bin/bash
grep . quotes.txt > test.txt
awk '!x[$0]++' test.txt > test1.txt
cat test1.txt
