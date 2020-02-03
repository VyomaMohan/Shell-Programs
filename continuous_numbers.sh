#Gets input from user until negative number is given
#If the postive numbers are all continuous (ascending) returns "YES". Else return "NO"

counter=0
numcount=0
prev=-1

while :
do
    read n
    if [ $n -lt 0 ]; then
        break
    else
        #echo "checking cond"
        if [[ "$n" -gt "$prev" ]]; then
            counter=$(($counter+1))
            #echo "passed cond"
        fi
        
        numcount=$(($numcount+1))
        prev=$n
    fi
done

#echo $counter
#echo $numcount

if [[ "$counter" -eq "$numcount" ]]; then
    echo "YES"
else
    echo "NO"
fi
