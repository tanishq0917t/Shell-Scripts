a=`cat payments.data | tr -s " " | cut -d " " -f 1 | sort -f | uniq -i`
flag=0
for x in $a
do
b=`grep -i $x payments.data | tr -s " " | cut -d " " -f 2`
total=0
for y in $b
do
total=`expr $total + $y`
done
if test $flag -ne 0;
then echo "$x : $total" >>result.txt
else echo "$x : $total" >result.txt
flag=1
fi
done
