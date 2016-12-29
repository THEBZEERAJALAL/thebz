#!/bin/sh'
echo "enter the file name"
read fname
echo "enter the path"
read fpath
cd $fpath
test -e $fname && rm $fname || tar -zcvf arch.tar.gz "$fpath"
cd /home/thebzeera/ShellScript


