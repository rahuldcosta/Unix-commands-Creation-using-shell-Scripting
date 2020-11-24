if [ $# -eq 2 ]
then
if test -e "$1" && test -e "$2"
then
echo "error file present" 
else
cp "$1" "$2"
fi
else
echo -e "Incorrect Number of Parameters \nCorrect ussage is copy.sh sorucefile destinationfile"
fi
