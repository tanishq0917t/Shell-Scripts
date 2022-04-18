if test $# -ne 1
then
echo "Only one argument is required"
exit 0
fi
if grep -i $1 payments.data
then
echo "$1 found"
else
echo "$1 not found"
fi
