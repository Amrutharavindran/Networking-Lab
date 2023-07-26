#script to check whether a year is leap year or not

if [ $# -gt 1 ]
then
   echo "syntax error ...."
   exit 1
fi
if [ $# -eq 0 ]
then
    echo "enter a year:"
    read year
else
    year=$1
fi
year4=`expr $year % 4`
year100=`expr $year % 100`
year400=`expr $year % 400`
if [ $year4 -eq 0 -a $year100 -ne 0 -o $year400 -eq 0 ]
then
   echo "$year is a leap year"     
else
   echo "$year is not a leap year"
fi

*****************************************************************
output 

ksb@ksb-H410M-S2-V2:~/networking$ sh leap.sh
Enter the year:
2001
 2001 is not a leap year
ksb@ksb-H410M-S2-V2:~/networking$ sh leap.sh 2004
 2004 is a leap year






