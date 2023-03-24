#!/bin/bash

#Nombre de client total=$nbct
#Nombre de ticket total=$nttt
#Nombre de client par magasin=$ncpm
#Chiffre d'affaire total=$cato
#Chiffre d'affaire par magasin=$capm
#Promo emise par magasin=$pepm
#Promo utilisé par magasin=$pupm

crontab -l | { cat; echo "* 9 * * * cd /home/alassane/Téléchargements/Projet_sh/ && ./projet_sh.sh"; } | crontab -

nbct=$(awk -F ',' '{print $5}' ventes.csv | sort -u | wc -l)

#nttt=$(awk -F ',' '{print $4}' ventes.csv | sort -u | wc -l)

ncpm=$(awk -F ',' '{ a[$3]++ } END { for(i in a) print "Magasin " i,a[i] " clients" }' ventes.csv | sort -u | head -n -1)

cato=$(awk -F ',' '{sum += $4} END {print sum}' ventes.csv)

capm=$(awk -F ',' '{ a[$3] += $4 } END { for(i in a) print "Magasin " i,a[i] " €" }' ventes.csv | sort -u | head -n -1)

pupm=$(awk -F ',' '{ if(length($6)>2) {count[$3] ++} } END { for (i in count) print "Magasin "i" : "count[i]" promos émises" }' ventes.csv | sort -u | head -n -1)

pepm=$(awk -F ',' '{ if(length($7)>2) {count[$3] ++} } END { for (i in count) print "Magasin "i" : "count[i]" promos utilisés" }' ventes.csv | sort -u | head -n -1)

echo RAPPORT QUOTIDIEN
echo "Hier nous avons eu $nbct clients dans l'ensemble de nos magasins"
#echo "Nous avons eu $nttt passages en caisse"
echo "Voici le nombre de client par magasin :
$ncpm"
echo "Le chiffre d'affaire total de nos magasins est de $cato €" 
echo "Voici le chiffre d'affaire par magasin :
$capm"
echo "Voici le nombre de code promo émis par magasin :
$pupm"
echo "Voici le nombre de code promo utilisé par magasin :
$pepm"






