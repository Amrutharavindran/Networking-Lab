#!/bin/bash
hour=`date +%H`
if [ $hour -lt 12 ]
then
echo "Good Morning World"
elif [ $hour -le 16 ]
then
echo "Good Afternoon World"
elif [ $ hour -le 20 ]
then
echo "Good Evening World"
else
echo "Good Night World"
fi 
