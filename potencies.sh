#Joan Garí Parera 

echo "En aquest programa et farà les potencies. a^b assumint b>0"
printf "Introdueix la base: "
read a
printf "Introdueix la potència: "
read b

c=1

while [ $c -lt $b ]
do
    if [ $c -eq 1 ]
    then
        let res=$a*$a
        let c=$c+1
    else
        let res=$res*$a
        let c=$c+1
    fi
done
echo ""
echo "El resultat és: $res"