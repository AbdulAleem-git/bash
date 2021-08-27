#!/bash/bin
array=()
for f in $(ls);do 
	array+=($f)
done
echo ${#array[@]}
echo "First 3 " ${array[@]:0:3}

