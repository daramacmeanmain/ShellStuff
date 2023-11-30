echo "How long would you like your password to be?"
read NUM
echo "Would you like to allow special characters? (Y/N)"
read CHOICE
if [ "$CHOICE" = "Y" ] || [ $CHOICE = "y" ]; then
	echo "Input the special characters you would like to be allowed:"
	read SPECIAL
	cat /dev/random | tr -dc a-zA-Z0-9$SPECIAL | fold -w $NUM | head -n 1
elif [ "$CHOICE" = "N" ] || [ $CHOICE = "n" ]; then
	cat /dev/random | tr -dc a-zA-Z0-9 | fold -w $NUM | head -n 1
else
	echo "Goodbye"
fi
