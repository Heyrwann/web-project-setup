#!/bin/bash

##########################################################
# Vérification de l'existence des scripts create_project #
##########################################################

echo "[BIP] Début du programme... [BOOP]"

# Variable
pathToCreateProjectSh=./bin/create_project.sh

echo "${pathToCreateProjectSh}"

if [ -f "${pathToCreateProjectSh}" ]; then
    echo "Le fichier ${pathToCreateProjectSh} existe"
    echo "Exécution de ${pathToCreateProjectSh}..."
    ${pathToCreateProjectSh}
else
    echo "Le fichier n'existe pas"
fi