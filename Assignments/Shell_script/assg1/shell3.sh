#!/bin/sh'
echo "FIRST FILE NAME"
read f1name
echo "SECOND FILE NAME"
read f2name
f1=$(grep -c ".*" "$f1name")
f2=$(grep -c ".*" "$f2name")
echo "$f1"
echo "$f2"
if [ "$f1" = "$f2" ]
then
echo "matches"
a=1
while [ $a -le $f2 ]
do
username=$(sed -n "${a}p" usrname.txt)
password=$(sed -n "${a}p" password.txt)
sudo useradd $username
sudo echo $username:$password | sudo chpasswd

a=$((a + 1))
done
else 
echo "can't create any user"
fi






















