#!/bin/bash

t1=1
t2=2
t3=3

list_t=( "$t1" "t2" "t3" )
function recette(){
	for i in "${list_t[@]}"
do
resulat_ca=$(($resulat_ca +$i))

done
echo " le chiffre daffaire est de : $resulat_ca euros"
return $resulat_ca
}

recette

function nb_t(){
for i in "${list_t[@]}"
do
	nb_t=${#list_t[@]}
done
	echo "il y a $nb recu."
return $nb_t
}

function panier_moyen(){
ticket_moyen=$(($resulat_ca/$nb_t))
echo "le ticket moyen est de $ticket_moyen euros"
}
panier_moyen
