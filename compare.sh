#compare 2 files ,remove the duplicate file
if [ $# -gt 2 -o $# -eq 1 ]
then
echo "Syntax Error.\nSyntax --> $0 [filename] [filename]"
exit
fi
if [ $# -eq 0 ]
then
echo "Enter a file name :: "
read a
echo "Enter another file name :: "
read b
else
a=$1
b=$2
fi
cmp $a $b >/dev/null
if [ $? -eq 0 ]
then
rm $b
echo "Removed duplicate file"
else
echo "No duplicate file exists"
fi
**********************************************************8
output
-----
ksb@ksb-H410M-S2-V2:~/networking$ sh compare.sh
Enter a file name :: 
sq
Enter another file name :: 
m2
No duplicate file exists
ksb@ksb-H410M-S2-V2:~/networking$ sh compare.sh file
Syntax Error.
Syntax --> compare.sh [filename] [filename]
ksb@ksb-H410M-S2-V2:~/networking$ sh compare.sh
Enter a file name :: 
mca.txt
Enter another file name :: 
m2
Removed duplicate file

