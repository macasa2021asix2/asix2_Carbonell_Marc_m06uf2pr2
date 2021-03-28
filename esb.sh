#!/bin/bash
#Script per moure Fitxers
#Marc Carbonell Sariola Asix 2 2020-2021

echo "Introdueix una de les dues opcions: -r o -e "
read a #Parametre -r -e
if [[ $a == "-r" ]]
then
	if [[ ! -d ~/paperera ]]
	then
		echo "La carpeta no existeix"
		exit 0
	fi
	rm ~/paperera/*
	echo "Fitxers eliminats"
	exit 0
elif [[ $a == "-e" ]]
then
	echo "Introdueix la extensio dels fitxers que vols buscar: "
	read b #Parametre per escollir extensio
	echo "Introdueix la ruta on vols buscar els fitxers"
	read c #Parametre per la carpeta
	if [[ $b == "" && $b == "" ]]
	then
		echo "No s'ha escollit la extensio ni el directori"
		exit 2
	fi
	
	if [[ ! -d ~/paperera ]]
	then
		mkdir ~/paperera
	fi
	
	if [[ ! -d $c ]]
	then
		echo "La carpeta indicada no existeix"
		exit 0
	fi
	ruta=$c/*.$b
	mv $ruta "$HOME/paperera"
	exit 0
else
	echo "Opció erronia"
	exit 3
fi


