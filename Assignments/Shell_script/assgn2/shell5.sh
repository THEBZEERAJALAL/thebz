#!/bin/sh
ls -RSlr /home/thebzeera/shellscript | grep ^- | tr -s ' ' | cut -d ' ' -f 9 > filelist.txt
echo "enter your file name"
read a
echo "enter your path"
read b
find /home/thebzeera/assignment/ -size 0 -print > test.txt
f1=$(grep -c ".*" "test.txt")
echo "$f1"
a=1
while [ $a -le $f1 ]

 	do
	f=$(sed -n "${a}p" test.txt)
echo "you want to delete the size zero file $f (y/n)?"
echo "$f"
read s
if [ $s = y ]
then
rm $(echo "$f")
a=$((a + 1))
else 
echo "can't create any user"
fi
done
[ -f "$a/$b" ] && mv "$a/$b" razorthink_$(echo "$a" | sed -r 's/[/]+/-/g')  && echo "task complete" 

