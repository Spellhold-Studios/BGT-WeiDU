#! /bin/sh
#prepare needed lowercase folders
mkdir -p bgt/bg1/data bgt/bg1/override  bgt/bg1/movies  bgt/bg1/music  bgt/bg1/sounds bgt/bg1/characters

#link key, ini and tlk files
for file in chitin.key dialog.tlk bgmain2.exe #baldur.ini
do
	if test "$(ls "$1" | grep -ci ^$file$)" -ne 0
	then
		ln -s "$1"/$(ls "$1" | grep -im 1 ^$file$ ) bgt/bg1/$file
	fi
done
if test "$(ls "$1" | grep -ci ^dialogf.tlk$)" -ne 0
then
 ln -s "$1/$(ls "$1" | grep -im 1 ^dialogf.tlk$)" bgt/bg1/dialogf.tlk
fi

#link needed resource folders
for fld in movies data
do
	if test -d "$1/$fld"
	then
		data="$1/$fld"
	else
		data="$1/$(ls "$1" | grep -im 1 ^$fld$)"
	fi

	for file in $(ls "$data" | grep -i \.bif)
	do
		if test -f "$data/$file"
		then
			ln -s "$data/$file" bgt/bg1/$fld/`echo $file  | tr '[:upper:]' '[:lower:]'`
		fi
	done
done

for fld in sounds override characters
do
	if test -d "$1/$fld"
	then
		data="$1/$fld"
	else
		data="$1/$(ls "$1" | grep -im 1 ^$fld$)"
	fi

	for file in $(ls "$data" | grep -i \....)
	do
	if test -f "$data/$file"
	then
		ln -s "$data/$file" bgt/bg1/$fld/`echo $file  | tr '[:upper:]' '[:lower:]'`
	fi
	done
done

if test -d "$1/music"
then
	data="$1/music"
else
	data="$1/$(ls "$1" | grep -im 1 ^music$)"
fi
for file in $(ls "$data" | grep -i \.mus)
do
if test -f "$data/$file"
then
	ln -s "$data/$file" bgt/bg1/music/`echo $file  | tr '[:upper:]' '[:lower:]'`
fi
done

#music subfolders
for file in $(ls "$data" | grep -E '^[^\ \.]+$')
do
if test -d "$data/$file"
then
	subfolder=bgt/bg1/music/`echo $file  | tr '[:upper:]' '[:lower:]'`
	mkdir $subfolder
	for song in $(ls "$data/$file" | grep -i \.ACM)
	do
	if test -f "$data/$file/$song"
	then
		ln -s "$data/$file/$song" $subfolder/`echo $song  | tr '[:upper:]' '[:lower:]'`
	fi
	done
fi
done