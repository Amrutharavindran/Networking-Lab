if [ $# -ne 2 ]
then
echo "\n syntax is <$0><src filename><tgt filename>"
exit 1
fi
if [ ! -f $1 ]
then
echo "$1 is not existing or not an ordinary file"
exit 2
fi
if [ -f $2 ]
then
echo "target file exist,overwrite it y/n"
read ans
if [ $ans = "n" ]
then
exit 3
fi
fi
cp $1 $2
echo "file copied"
*****************************************************************************8
output

ksb@ksb-H410M-S2-V2:~/networking$ sh modify.sh
 syntax is <modify.sh><src filename><tgt filename>
 
ksb@ksb-H410M-S2-V2:~/networking$ sh modify.sh zz xy
zz is not existing or not an ordinary file

ksb@ksb-H410M-S2-V2:~/networking$ sh modify.sh mca.txt li
target file exist,overwrite it y/n
y
file copied

ksb@ksb-H410M-S2-V2:~/networking$ sh modify.sh mca.txt li
target file exist,overwrite it y/n
n
ksb@ksb-H410M-S2-V2:~/networking$ 


