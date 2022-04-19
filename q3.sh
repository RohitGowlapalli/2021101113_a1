#!/bin/bash
declare word=()
declare -A count
wc -c $1|awk '{print $1}'
wc -l $1|awk '{print $1}'
wc -w $1|awk '{print $1}'
awk '{s+=1} {print "Line No:"s "-" "Count of Words:" NF}' $1

#egrep -o "\b[[:alpha:]]+\b" $1 | \

while read Line
  do
    for x in $Line
      do
        ((count['$x']++))
        if [[ ! " ${word[@]} " =~ " $x " ]]
        then
            word+=($x)
        fi
      done
  done < $1
for x in ${word[@]}
  do
  #echo $i
    echo "Word:$x-Count of repetition:${count[$x]}"
  done

#awk '{ count[$0]++ }
#END {printf("") ;
#for(ind in count)
# { printf("Word:%s-Count of repetition:%d\n",ind,count[ind]); }
#}'






