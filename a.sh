cd ..

echo "fichiers trouvés :"
for i in *(.on)
do
  echo "<$i>"
done

echo -n "indice de début : "
read n_start

n=$n_start
echo "aperçu :"
for i in *(.on)
do
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
for i in *(.on)
do
	ext="${i:e}"
	if [[ -n "$ext" ]]
	then
		mv "$i" "$n.$ext"
	else
		mv "$i" "$n"
	fi
	((n++))
done

echo "done"
