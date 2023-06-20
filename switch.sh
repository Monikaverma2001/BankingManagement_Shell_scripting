echo "Enter a number : "
read a

case $a in
	[0-9])
		echo " $a is less than 10"
	        ;;
	[1-9][1-9])
		echo " $a is greater than 10"
		;;
	[1-1][0-0])
		echo " $a is equal to 10"
		;;
	*)
		echo " $a is greater than 10"
esac


