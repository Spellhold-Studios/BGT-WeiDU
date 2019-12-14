#! /bin/sh
mkdir bgt/bg1
for res in chitin.key dialog.tlk dialogf.tlk bgmain2.exe movies data sounds override characters music
do
	name=$(ls "$1"|grep -im 1 ^$res$ )
	if test -e "$1/$name"
	then
		ln -fs "$1/$name" bgt/bg1/$name
	fi
done