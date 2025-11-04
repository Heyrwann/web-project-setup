@echo off
chcp 65001 > nul

::=======================================================
:: Vérification de l'existence des scripts create_project
::=======================================================

echo ------------
echo [BIP] Début du programme...

:: Variables
set pathToCreateProjectSh=.\bin\create_project.sh
set pathToCreateProjectCmd=.\bin\create_project.cmd

:: Vérifier si les fichiers create_project existent et les exécuter
if exist %pathToCreateProjectSh% (
    echo [BIP] Le fichier Bash existe
    echo [BIP] Exécution de %pathToCreateProjectSh% avec Git Bash...
    %pathToCreateProjectSh%
    echo [BOOP] Programme terminé
    echo ------------
) else (
    echo [BIP] Le fichier Bash n'existe pas
    echo [BIP] Vérification de l'existence du fichier Batch...
    if exist %pathToCreateProjectCmd% (
        echo [BIP] Le fichier Batch existe
        echo [BIP] Exécution de %pathToCreateProjectCmd%...
        %pathToCreateProjectCmd%
    ) else (
        echo [ERREUR] Aucun des fichiers de création de structure n'existe
        echo [BOOP] Programme terminé
        echo ------------
    )
)