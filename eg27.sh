if test $# -ne 1
then
echo "Only one argument is required"
exit 0
fi
if test -e $1
then
echo "$1 exists"
else 
echo "$1 doesn't exists"
fi
