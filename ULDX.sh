
if test "$#" -eq "2"
then
if test -d "$1"
then
case $2 in
"U")
   ls $1 | mv  ;;
"L")
   echo "upper";;
"D")
   echo "dir change";;
esac
fi
else
 echo "Invalid usage of Command ...Correct Use :- DIR OPTION i.e. fall U"
fi

