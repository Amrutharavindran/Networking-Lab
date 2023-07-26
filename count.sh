#to count no.of words and lines
if [ $# -ne 1 ]
then 
echo "syntax is <$0> [ <filename> ] "
exit 1
fi
flag=0
if [ $# -eq 1 ]
then
term=`tty`
exec<$1
flag=1
fi
while read line
do
nol=`expr $nol + 1`
set $line>/dev/null
nowds=`expr $nowds + $#`
done
echo "Number of lines=$nol"
echo "Number of words=$nowds"
if [ $flag -eq 1 ]
then
exec<$term
fi
exit 0
***********************************************
ksb@ksb-H410M-S2-V2:~/networking$ sh count.sh
syntax is <count.sh> [ <filename> ] 
ksb@ksb-H410M-S2-V2:~/networking$ sh count.sh count.sh
Number of lines=26
Number of words=70
