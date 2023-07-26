#shell script to rename all ordinary files in a directory with filename.pid of shell
if [ $# -gt 1 ]
then
echo "Syntax Error.\nSyntax is <$0> <location> or <$0>"
exit 1
fi
if [ $# -ne 0 ]
then
cd $1
fi
for i in * 
do
if [ -f $i ]
then
mv $i $i.$$
fi
done
echo "File names changed to filename.$$"
exit 0
*******************************************************************************************************8
output

ksb@ksb-H410M-S2-V2:~/networking/files$ ls -l
total 24
-rw-rw-r-- 1 ksb ksb  30 Jul  1 11:18 a22
-rw-rw-r-- 1 ksb ksb  18 Jul 20 10:05 mc
-rw-rw-r-- 1 ksb ksb  32 Apr 27 12:11 mv.txt
-rw-rw-r-- 1 ksb ksb  53 Jul 22 09:32 q1
-rw-rw-r-- 1 ksb ksb  59 Jun 26 14:52 q2
-rw-rw-r-- 1 ksb ksb 303 Jul 22 10:20 rename.sh

ksb@ksb-H410M-S2-V2:~/networking/files$ sh rename.sh 
File names changed to filename.5667

ksb@ksb-H410M-S2-V2:~/networking/files$ ls -l
total 24
-rw-rw-r-- 1 ksb ksb  30 Jul  1 11:18 a22.5667
-rw-rw-r-- 1 ksb ksb  18 Jul 20 10:05 mc.5667
-rw-rw-r-- 1 ksb ksb  32 Apr 27 12:11 mv.txt.5667
-rw-rw-r-- 1 ksb ksb  53 Jul 22 09:32 q1.5667
-rw-rw-r-- 1 ksb ksb  59 Jun 26 14:52 q2.5667
-rw-rw-r-- 1 ksb ksb 303 Jul 22 10:20 rename.sh.5667
