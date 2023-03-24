#!/bin/bash

sudo crontab -e

* 9 * * * /home/mathys/projet_pipeline/script_pipeline1.sh



        nombre_tickets=$(awk -F"," END'{print $1}' $fichierdujour)

		echo "votre document comptable indique qu'il y a $nombre_tickets tickets"


	ca_moyen=$(awk -F"," 'NR>1 {sum+=$4} END {print sum / (NR - 1)}' $fichierdujour)
	
        echo " En moyenne, nos magasins vendent pour: $ca_moyen euros" 


        recette_total=$(awk -F"," '{sum+=$4} END {print sum}' $fichierdujour)
	

        echo "la recette total  est de $recette_total euros"



