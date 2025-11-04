#!/bin/bash

##########################################################
# Vérification de l'existence des scripts create_project #
##########################################################

echo "------------"
echo "[BIP] Début du programme..."

# Variable
pathToCreateProjectSh=./bin/create_project.sh

# Vérifier si le fichier create_project.sh existe et l'exécuter
if [ -f "${pathToCreateProjectSh}" ]; then
    echo "[BIP] Le fichier ${pathToCreateProjectSh} existe"
    echo "[BIP] Exécution de ${pathToCreateProjectSh}..."
    ${pathToCreateProjectSh}
else
    echo "[ERREUR] Le fichier /bin/create_project.sh n'existe pas"
fi