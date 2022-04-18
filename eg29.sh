while [ -n "$1" ]
do
case $1 in
	-l) ls ;;
	-w) whoami ;;
	*) echo "Invalid option $1" ;;
esac
shift
done
