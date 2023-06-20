#program to count the number of lines and words of a file
#! /bin/bash
echo "enter a file:"
read file
w=`cat $file | wc -w`
l=`grep -c "." $file`
echo "number of words in file is :"$w
echo "number of lines in file is:"$l 

