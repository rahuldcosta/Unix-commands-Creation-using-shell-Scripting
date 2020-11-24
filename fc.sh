echo "enter your choice"
echo "l - lowercase"
echo "u - Uppercase"
echo "d - Enter directory"
echo "x - Exit"

read choice
 
case $choice in 
	"l") for file in `ls`
             do
               if [ ! -e $file ];
	       then
               echo "No file exist"
		elif [  -f $file ]
		then
              lc=`echo $file  | tr '[A-Z]' '[a-z]'`
                if [ $lc != $file ];
	        then
                mv -i $file $lc
                fi
                fi
             done
	     echo "All Files changed to lower case"
	 ;;


	"u") for file in `ls`
             do
               if [ ! -e $file ];
	       then
               echo "No file exist"
               
		elif [  -f $file -a $file != "fc.sh" ]
		then
		uc=`echo $file  | tr '[a-z]' '[A-Z]'`
		if [ $uc != $file ];
	        then
                mv -i $file $uc
                fi
                fi
		
		done
	     echo "All Files changed to Upper case"
	 ;;


	"d") 
	     pwd
	     echo "Enter your choice '1'----Forward"
             echo "'2'----Back"
	     read wish
	     
	     case $wish in 
	     "1") echo "Enter Directory"
	     read folder
	     if [ ! -d $folder ] 
	     then 
	     echo "Directory not exist"
	     else
             cd $folder 
             fi ;;
	     "2") cd .. ;;
	     esac	


	  
;;
	"x") echo "x";;

esac
	


