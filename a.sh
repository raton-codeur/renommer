cd a

echo "contenu du dossier :"
for i in *
do
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
echo "<$i>" "->" "<$n.$ext>"
((n++))
done

echo "press enter to continue, ctrl-c to abort"
read tmp

n=$n_start
for i in *
do
mv "$i" "$n.$ext"
((n++))
done

echo "done"
