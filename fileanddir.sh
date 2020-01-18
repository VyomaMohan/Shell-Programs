#gets directory name and file name as args. use within single quotes

flag_dir=0
flag_file=0

#store in variables (optional)
PASSED_DIR=$1
PASSED_FILE=$2

#check if directory present
if [[ -d $1 ]];  then
    flag_dir=1
fi

#check if file is present
if [[ -f $2 ]]; then
   flag_file=1
fi


if [ $flag_dir -eq 1 -a $flag_file -eq 1 ];then
    echo "Directory and file present" #both are there
elif [ $flag_dir -eq 1 -a $flag_file -eq 0 ];then
    echo "Directory present, file absent" #directory present, file absent
elif [ $flag_dir -eq 0 -a $flag_file -eq 1 ];then
    echo "Directory is absent, file present" #directory absent, file present
else
    echo "Both are absent" #both absent
fi

echo "checking if file is in directory"

# this is to check if file is inside directory.
file_name=${PASSED_FILE##*} #extract file name alone from full path

if [ -e $PASSED_DIR/$file_name ]; then #check condition
         echo "is inside"
fi


