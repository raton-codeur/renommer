echo "contenu du dossier sans 'a.sh' 'makefile' et 'readme.txt' :"
for i in *
do
  if [ "$i" = "a.sh" ] || [ "$i" = "makefile" ] || [ "$i" = "readme.txt" ]
	then
    continue
  fi
  echo "<$i>"
done

echo -n "indice de début : "
read n_start
echo -n "extension (ex: mkv) : "
read ext

n=$n_start
echo "aperçu :"
for i in *
do
  if [ "$i" = "a.sh" ] || [ "$i" = "makefile" ] || [ "$i" = "readme.txt" ]; then
		continue
	fi
	echo "<$i>" "->" "<$n.$ext>"
	((n++))
done

echo "press enter to continue, ctrl-c to abort"
read tmp

n=$n_start
for i in *
do
  if [ "$i" = "a.sh" ] || [ "$i" = "makefile" ] || [ "$i" = "readme.txt" ]; then
    continue
  fi
	mv -- "$i" "$n.$ext"
	((n++))
done

echo "done"
