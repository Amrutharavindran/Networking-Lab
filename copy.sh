#copy set of files as pairs
r=` expr $# % 2 `
if [ $r -ne 0 ]
then
echo "file names are not in pairs"
exit 1
fi
while [ $# -ne 0 ]
do
cp $1 $2
shift
shift
done
exit 0
*************************
output

ksb@ksb-H410M-S2-V2:~/networking$ sh copy.sh file1
file names are not in pairs
ksb@ksb-H410M-S2-V2:~/networking$ sh copy.sh mca.txt sq
ksb@ksb-H410M-S2-V2:~/networking$ 




