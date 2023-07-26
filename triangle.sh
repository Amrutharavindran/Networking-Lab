# sides of triangle
if [ $# -gt 1 ]
then
echo "#syntax error"
fi
if [ $# -eq 0 ]
then
echo "enter first number"
read a
echo "enter second number"
read b
echo "enter third number"
read c
fi
echo "output"
if [ `expr $a + $b` -le $c -o `expr $a + $c` -le $b -o `expr $b + $c` -le $a ]
then
    echo "$a $b $c cannot be the sides of a triangle " 
    exit
else
    echo "$a $b $c can be the sides of a triangle"
fi
***********************************************************************************************
output

ksb@ksb-H410M-S2-V2:~/networking$ sh triangle.sh
enter first number
5
enter second number
6
enter third number
9
output
5 6 9 can be the sides of a triangle

ksb@ksb-H410M-S2-V2:~/networking$ sh triangle.sh
enter first number
5
enter second number
3
enter third number
2
output
5 3 2 cannot be the sides of a triangle 

ksb@ksb-H410M-S2-V2:~/networking$ sh triangle.sh 4 5 6
#syntax error  <triangle.sh>

