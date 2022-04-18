set -- $(getopt -q a:b:c "$@")
echo $@
echo "1 -----"
while getopts a:b:c cool
do
echo "$cool $OPTIND"
done
echo "2 -----"
echo $OPTIND
echo "3 -----"
shift $(($OPTIND - 1))
echo "4 -----"
while [ -n "$1" ]
do
echo $1
shift
done
