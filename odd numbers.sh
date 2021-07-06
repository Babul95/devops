#!/bin/bash.
Evensum=0.
ODDsum=0.
for i in {1..100};do.
if [ $(( i%2 )) -eq 0 ];then.
let Evensum+=$i.
else.
let ODDsum+=$i
done
echo "Evensum is $Evensum"
echo "ODDsum is $ODDsum"



#!/bin/bash
for number in {1..100..2}
do
echo "$number "
done



#!/bin/bash 
for ((X=1; X<100; X+=2)); do echo $X; done 
# or 
for X in {1..50}; do echo $((X*2-1)); done