read -p "Enter something: " a
case $a in
GOOD)
echo "This is very good"
echo "This was expected";;
BAD)
echo "wont help";;
WORST)
echo "What can be done";;
*)
echo "What is this";;
esac
