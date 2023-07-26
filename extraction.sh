#extracting a set of lines from a set of files

if [ $# -le 2 ]
then
echo "syntax is <$0> <range> <file....>"
exit 1
fi
n1=$1
n2=$2
shift
shift
n3=`expr $n2 - $n1 + 1`
while [ $# -ne 0 ]
do
echo "lines from $n1 - $n2 from file $1\n"
head -$n2 $1 | tail -$n3
shift
done
exit 0 
*********************************************************
output
ksb@ksb-H410M-S2-V2:~/networking$ sh extraction.sh
syntax is <extraction.sh> <range> <file....>

ksb@ksb-H410M-S2-V2:~/networking$ sh extraction.sh 4 8 delete.sh modify.sh
lines from 4 - 8 from file delete.sh

then
echo "Syntax error.\nSyntax is <$0>"
exit
fi
echo "Enter the file name: "
lines from 4 - 8 from file modify.sh

exit 1
fi
if [ ! -f $1 ]
then
echo "$1 is not existing or not an ordinary file"
