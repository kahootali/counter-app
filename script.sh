cd app/
touch counter.txt
declare -i var=$(cat counter.txt)
for (( ; ; ))
do
   cat counter.txt   
   var=$((var + 1))
   echo $var >counter.txt    
   sleep 1s
done
