#display directory in window style
if [ $# -ne 0 ]
then
echo "\n\nDirectory of pwd \n"
exit 1
fi
for f in *
do
fdatetime=`date -r $f "+ %d -%m -%Y %H:%m %s "`
if [ -d $f ]
then
echo "$f\t\t<DIR><\t$fdatetime"
else
fsize=`cat $f | wc -c`
echo "$f\t\t$fsize\t$fdatetime"
fi
done
exit 0
******************************************************************
output

ksb@ksb-H410M-S2-V2:~/networking/directory$ sh windowstyle.sh
a1		150	 20 -07 -2023 10:07 40 
a2		305	 20 -07 -2023 10:07 59 
bc		27	 20 -07 -2023 10:07 16 
cc		59	 01 -07 -2023 11:07 44 
colour		55	 19 -06 -2023 15:06 00 
f1		<DIR>	 22 -07 -2023 10:07 06 
file		0	 22 -07 -2023 10:07 55 
windowstyle.sh		283	 22 -07 -2023 11:07 52 
