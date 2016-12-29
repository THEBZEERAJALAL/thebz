#!/bin/sh
echo "enter your file name"
read fname
x=$(date +%Y%m%d%H%M%S)
mkdir $x
f1=$(grep -c ".*" "$fname")
echo "$f1"
a=1
while [ $a -le $f1 ]

 	do
	f=$(sed -n "${a}p" $fname)
	sudo cp --parents -r --preserve=all $f $x
	a=$((a + 1))
done


