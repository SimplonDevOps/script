#!bin/bash

#APP_PATH=$(dirname $inspath$0))"

#Python3 generate.py

line=03_23_2023__08_17_ventes.csv

MOLIS=$(awk -F ',' '{print $4}' "$line")
NUMTIK=$(awk -F ',' '{print $1}' "$line" | awk 'END{print}')

###################################################################

function recette () {

        for i in "${MOLIS[@]}"
do
  ALMON=$(($MOLIS + i))
done
 echo " le chiffre d'affaire est de : $resultat_ca euros "
return $MOLIS
}

#################################################################

function panier_moyen () {

        TIKMOY=$(($ALMON/$NUMTIK))

        echo "le ticket moyen de la boutique est de $ticket_moyen euros"

}
recette
panier_moyen
