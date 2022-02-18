#!/bin/bash
Dir1=$1
Dir2=$2
i=0

cd  $Dir1
for file1 in *
do
   cd $Dir2
   for file2 in *
   do
	if cmp -s $file1 $file2
	then
	   echo $file1 == $file2
        fi 
    i=$((i+1))
   done;
done;

echo $i
