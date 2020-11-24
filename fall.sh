for var in *
 do
 if  test -d "$var" 
  then
  echo "right"
 else
  echo "wrong"
 fi
done
