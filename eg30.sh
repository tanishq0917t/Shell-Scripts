#options are i and r [ i for install ] and [ r for remove ]
is_i="N"
is_r="N"
i_value=""
r_value=""
while [ -n "$1" ]
do

case $1 in
	-i) i_value=$2
	    is_i="Y"
	    shift;;
        -r) r_value=$2
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
echo "Install $i_value"
fi
if test "$is_r" = "Y"
then
echo "Remove $r_value"
fi

while [ -n "$1" ]
do
echo "$1"
shift
done
