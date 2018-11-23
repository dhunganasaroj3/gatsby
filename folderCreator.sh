#!/bin/bash
#script to create folder

#Define the array
#program use for loop to print array

ARRAY_COUNTRY=(UK JP CA AE RU CN DE HK IN LU NP NO PK)
ARRAY_CAP=(ping dig traceroute curl)
UNIVERSITY_US=(HARVARD OHIO STANFORD UOC PSU MIT UND USC YU ANM UCF DU CU MSU PU UOP UOF UOT NU)

#To identify the size of the array

ARR1=${#ARRAY_COUNTRY[@]}
ARR2=${#ARRAY_CAP[@]}
ARR3=${#UNIVERSITY_US[@]}
echo "welcome to the v1.0 of Folder creation"
echo "Brahmastra Project v1.0"
echo "This program Create Folder in the root directory for brahmastra project"
echo "To Create the Folder in the root superuser access is needed"
echo "Please enter the password to create the folder"
#sudo su
#cd /
mkdir .bramhastra
mkdir .bramhastra/globalconfig
mkdir .bramhastra/globalconfig/endpoint

#This nested loops helps to create the CLI tools folder inside Country folder

for((a=0; a<${ARR1}; a++))
do
mkdir .bramhastra/globalconfig/endpoint/${ARRAY_COUNTRY[$a]}

for ((b=0; b<${ARR2}; b++))
do
mkdir .bramhastra/globalconfig/endpoint/${ARRAY_COUNTRY[$a]}/${ARRAY_CAP[$b]}
done
done

mkdir .bramhastra/globalconfig/endpoint/US

#This nested loops helps to print university of USA and CLI tools inside the university folder
for((a=0; a<${ARR3}; a++))
do
mkdir .bramhastra/globalconfig/endpoint/US/${UNIVERSITY_US[$a]}

for ((b=0; b<${ARR2}; b++))
do
mkdir .bramhastra/globalconfig/endpoint/US/${UNIVERSITY_US[$a]}/${ARRAY_CAP[$b]}
done
done
echo "Your work has successfully Done"
echo "Thank you for using"
