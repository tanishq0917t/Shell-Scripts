#options are i and r [ i for install ] and [ r for remove ]
is_i="N"
is_r="N"
i_value=""
r_value=""
while [ -n "$1" ]
do

case $1 in
	-i) i_value="$i_value $2"
	    is_i="Y"
	    shift;;
        -r) r_value="$r_value $2"
            is_r="Y"
            shift ;;
	--) shift
	    break ;;
	*)  "Invalid option $1"
esac
shift
done
if test "$is_i" = "Y"
then

for i in $i_value
do
echo "Install $i"
done
fi

if test "$is_r" = "Y"
then

for r in $r_value
do
echo "Remove $r"
done
fi

while [ -n "$1" ]
do
echo "$1"
shift
done
