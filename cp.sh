if test -e "$1"
then
if  test -e "$2"
then 
echo "error file present" 
else
cp "$1" "$2"
fi
fi
