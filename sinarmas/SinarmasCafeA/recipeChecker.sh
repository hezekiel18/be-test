#!/bin/bash
#Remove Spaces Between Word and Using Cat to read the FILE from argument 1
FILE=`echo "$1" |sed -e 's/ //g'`
LINES=$(cat $FILE)

#Assign Default Value for Fruit Igridients
APPLES=0
PINEAPPLES=0
#Loop through the FruitList.txt and count the Fruit Igridients
for LINE in $LINES
do 
     FRUIT=`echo "$LINE" |sed -e 's/ //g'`
     #echo "${FRUIT^^}"
     #echo "${LINE}"
     if [ "${FRUIT^^}" = "APPLE," ]
    then
       #echo "$FRUIT"    
       APPLES=$((APPLES+1))
    elif [ "${FRUIT^^}" = "PINEAPPLE," ]
    then
        #echo "$FRUIT"
       PINEAPPLES=$((PINEAPPLES+1))
    fi
done 

echo $APPLES
echo $PINEAPPLES

#Check the order from argument 2, Compare Fruit Igridients and the recipe if true Shall Have, if false Shall Have not, if the order not in the menu return false
if [ "$2" == "APPLE PIE" ]
then
    if [ "$APPLES" -ge 3 ]
        then
            echo "You shall have $2" 
    else
            echo "You shall not have $2"   
    fi            
elif [ "$2" == "PINEAPPLE PIE" ]
then
    if [ $PINEAPPLES -eq 3 ]
        then
            echo "You shall have $2" 
    else
            echo "You shall not have $2"   
    fi   
elif [ "$2" == "FRUIT PARFAIT" ]
then
    if [[ "$APPLES" -ge 2 && $PINEAPPLES -ge 2 ]]
        then
            echo "You shall have $2" 
    else
            echo "You shall not have $2"   
    fi  
else
    echo "We do not have that on the menu"
fi

