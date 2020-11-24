
for x in $*
do
:
done
lastfield=$x
if test -d "$lastfield"
then
for y in $*
do
if test -e "$y" && test ! -d "$y"
then
cp "$y" "$lastfield"
fi
done
echo "Data is Copied"
else
echo "ERROR:$lastfield is not a directory"
fi

