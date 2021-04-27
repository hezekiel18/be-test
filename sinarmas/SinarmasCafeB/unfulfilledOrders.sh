#!/bin/bash
#Remove Spaces Between Word and Using Cat to read the FILE from argument 1
#MENU="STRAWBERRY SHORTCAKE"
while read p; 
do
  #echo "$p";
        for word in $p;
        do  
            if [ "$word" = "fulfilled=FALSE" ]
            then
                echo "$p"
            fi
        done;
done < $1
