cd ..

echo "fichiers trouvés :"
for i in *
do
  [ -f "$i" ] || continue
  echo "<$i>"
done

echo -n "indice de début : "
read n_start
n=$n_start

echo "aperçu :"
for i in *
do
  [ -f "$i" ] || continue
	ext="${i:e}"
	if [[ -n "$ext" ]]
	then
		echo "<$i>" "->" "<$n.$ext>"
	else
		echo "<$i>" "->" "<$n>"
	fi
	((n++))
done

echo "press enter to continue, ctrl-c to abort"
read tmp

n=$n_start
for i in *
do
  [ -f "$i" ] || continue
	mv -- "$i" "$n.$ext"
	((n++))
done

echo "done"
