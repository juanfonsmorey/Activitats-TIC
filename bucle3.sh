#Fes un programa que mostri per pantalla del 1 al 10
#Juan Fons Morey

nom=1
while [ $nom -le 10 ]
do
  echo "El nombre és: $nom"
  let nom=$nom+1
done