
#program to show the different operators +, -, *, /, =, ==

a=$1
b=$2

echo "Sum of numbers is: "$((a+b))

# -gt - greather than, -lt less than, -eq equals, -ne not equals
# -ge - greater than equal to, -le - less than equal to

if [ $a -gt $b ]; then
   d=$((a-b))
elif [ $a -lt $b ]; then
   d=$((b-a))
fi

echo "Difference between two numbers is :"$d

echo "Product of two numbers is : "$((a*b))

echo "Result of division of two numbers is :"$((a/b))

if [ $a == $b ]
then
   echo "Both nmbers are equal!!!"
else
   if [ $a -gt $b ]
   then
        echo "$a is greater than $b!!!"
   else
       echo "$b is greater than $a!!!"
   fi
fi

j=1
c=""  
for i in $* # $* - collection of all command line parameters
do
   c+=$i  # same as writing c=$c+$i
   if[ $j -lt $# ] #$# - count of command line parameters
   then
      c+=", "
      ((j++))   #same as writing j=$j+1
   fi
done
echo "The command line parameters are : $c"

