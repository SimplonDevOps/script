#!/bin/bash

#instruction à l'utilisateur et enregistrement des données
echo "Entrez votre chaîne de characteres :"
read ch1

#instruction à l'utilisateur et enregistrement des données pt2
echo "Entrez votre une autre chaîne de charactere :"
read ch2

#si ch1 est egal ch2 alors on affiche le premier echo sinon le 2eme
if [ "$ch1" = "$ch2" ]; then
	echo "Vos chaînes sont identiques"
else
	echo "Vos chaînes ne sont pas identiques"
#fermeture de la boucle
fi
