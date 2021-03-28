#!/bin/bash
#Script per comprimir fitxers
#Marc Carbonell Sariola Asix 2 2020-2021

echo "Introdueix la ruta dels fitxers que vols comprimir: "
read ruta
b=$ruta/*.*
c=0

if [[ -e $HOME/comprimit.tar.gz ]]
then
	rm $HOME/comprimit.tar.gz
fi

for f in $b
do
	if [[ -s $f && -x $f ]]
	then
		tar -rf comprimit.tar.gz $f
		(( c++ ))
	fi
done
echo "S'han comprimit una quantitat total de: $c fitxers"
exit 1
