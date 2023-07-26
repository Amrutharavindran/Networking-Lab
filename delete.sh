#shell script to delete all lines containing word linux*

if [ $# -ne 0 ]
then
echo "Syntax error.\nSyntax is <$0>"
exit
fi
echo "Enter the file name: "
read file
term=`tty`
exec < $file
while read line
do
echo $line | grep -i linux > file2
if [ $? -eq 0 ] 
then    
continue
fi      
echo $line >> file1
done
echo "deleted the line containg the word linux"
mv file1 $file
rm file2
exec < $term
******************************************************
output

ksb@ksb-H410M-S2-V2:~/networking$ cat > li
Linux is an operating system
anfhidff
LINUX njjfdsgs
jdgjdg

ksb@ksb-H410M-S2-V2:~/networking$ sh delete.sh program
Syntax error.
Syntax is <delete.sh>

ksb@ksb-H410M-S2-V2:~/networking$ sh delete.sh 
Enter the file name: 
li
deleted the line containg the word linux

ksb@ksb-H410M-S2-V2:~/networking$ cat li
anfhidff
jdgjdg



