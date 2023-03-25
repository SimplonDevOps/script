#!bin/bash

#APP_PATH=$(dirname realpath)
CSV_Files=/home/03_23_2023__08_17_ventes.csv
#Python3 generate.py

line=CSV_FILES


#Récupération de la quatriéme collone (prix des tickets)
MOLIS=$(awk -F ',' '{print $4}' "$line")
#Récupération de la Premiere collone du document (Nombre de Tickets)
NUMTIK=$(awk -F ',' '{print $1}' "$line" | awk 'END{print}')

###################################################################
#Fonction qui calcule touts les prix des tickets et les ranges dans la variable MOLIS
function recette () {

        for i in "${MOLIS[@]}"
do
  ALMON=$(($MOLIS + i))
done
 echo " le chiffre d'affaire est de : $resultat_ca euros "
return $MOLIS
}

#################################################################
#Fonction qui calcul le nombre de ticket et la recette et le résultat est stocker dans la variable TIKMOY
function panier_moyen () {

        TIKMOY=$(($ALMON/$NUMTIK))

        echo "le ticket moyen de la boutique est de $ticket_moyen euros"

}
recette
panier_moyen
