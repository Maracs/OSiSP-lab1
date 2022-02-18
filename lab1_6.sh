#!/bin/bash
savefile=$1
searchfile=$2
typefile=$3

if [[  -z $typefile ]]
then
	echo "Need 3 parametrs"
else

if [[ -w $savefile ]]
then if [[ -r $searchfile ]]
	then 
		      cd $searchfile

		      for file in *.$typefile
			 do
			 echo $file >> $savefile
			 done;	
			 
			 sort -i $savefile 	
	else
		echo "Cant open " $searchfile  >&2
	fi
else
     echo "Cant save in " $savefile >&2
fi

fi
