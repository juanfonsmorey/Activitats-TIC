#Juan Fons Morey

printf "Introdueix els caràcters: "
read paraules
conta=0

for var in ${paraules[@]} 
do
    if [ $var = h -o $var = H ]
    then
        let conta=$conta+1
    fi

done 

if [ $conta -gt 1 ]
then
    echo "Hi ha $conta h's."
elif [ $conta -eq 1 ]
then
    echo "Hi ha $conta h."
else
    echo "No hi ha cap h."
fi 

if [ $ran1 -gt $ran2 ]
then
	echo "El primer nombre generat, que és $ran1, és més gran que el segon, que és $ran2."
elif [ $ran1 -lt $ran2 ]
then
	echo "El primer nombre generat, que és $ran1, és més petit que el segon, que és $ran2."
else
	echo "El primer nombre generat, que és $ran1 és igual que el segon."
fi