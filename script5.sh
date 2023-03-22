
#!/bin/sh
read -p "entrer chaine1 " string1
read -p "entrez chaine2 " string2
#string1="salut tout le monde"
#string2="bonjour tout le monde"

if [ "$string1" = "$string2" ]
	then
		 echo "string1 et string2 sont identiques"
else

	echo "string1 et string2 ne sont pas identiques"
fi

