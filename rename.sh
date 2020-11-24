cd $1
ch=f
while [ $ch != "x" ]
do
echo " enter your choice 
       choices are :
       L:convert to lowercase
       U:convert to uppercase
       D:change the directory
       X:to exit"
read choice
case $choice in
L)
for var in *
do
if [ ! -d "$var" ]
then
str=`echo $var | tr '[A-Z]' '[a-z]'`
if [ $var = $str ]
then
echo "error"
else
mv "$var" "$str"
fi
fi
done  
ls ;;
U)
for var in *
do
if [ ! -d "$var" ]
then
str=`echo $var | tr '[a-z]' '[A-Z]'`
if [ $var = $str ]
then
echo "error"
else
mv "$var" "$str"
fi
fi
done  
ls;;

D)
echo "enter new directory(please use absolute path)
      you are here"
      pwd
read dir
if [ ! -d "$dir" ]
then
echo "not a directory"
else
cd $dir 
fi ;;
X)
exit  ;;
esac
done
