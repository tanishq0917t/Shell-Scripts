a=`ls -p -l $1 | grep -v "/" | tr -s " " | cut -d " " -f 5`
totalBytes=0
for x in $a
do
totalBytes=`expr $totalBytes + $x`
done
echo "Total Bytes: $totalBytes"
