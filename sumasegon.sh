#Juan Fons Morey

echo "En aquest programa has d'introduir una hora i el programa li sumarà un segon."
printf "Introdueix l'hora: "
read hora
printf "Introdueix els minuts: "
read minut
printf "Introdueix els segons: "
read segon
echo ""

while [ $minut -ge 60 -o $segon -ge 60 -o $hora -ge 24 ]
do
    echo "Introdueix una hora vàlida"
    printf "Introdueix l'hora: "; read hora
    printf "Introdueix els minuts: "; read minut
    printf "Introdueix els segons: "; read segon
    echo ""
done
let segon=$segon+1
if [ $segon -ge 60 ]
    then
    let minut=$minut+1
    let segon=$segon-60
fi
if [ $minut -ge 60 ]
    then
    let hora=$hora+1
    let minut=$minut-60
fi

if [ $segon -lt 10 ] 
then
  segon=0$segon
fi
if [ $minut -lt 10 ]
then
  minut=0$minut
fi

if [ $hora -ge 24 ]
    then
    echo "Si suman un segon a l'hora donada: 00:00:00"
else
    echo "Si suman un segon a l'hora donada: $hora:$minut:$segon"
fi