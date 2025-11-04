@echo off
chcp 65001 > nul

::=======================================================
:: Vérification de l'existence des scripts create_project
::=======================================================

echo [BIP] Début du programme... [BOOP]

:: Variables
set pathToCreateProjectSh=.\bin\create_project.sh
set pathToCreateProjectCmd=.\bin\create_project.cmd

:: Vérifier si les fichiers create_project existent et les exécuter
if exist %pathToCreateProjectSh% (
    echo Le fichier Bash existe
    echo Exécution de %pathToCreateProjectSh% avec Git Bash...
    %pathToCreateProjectSh%
) else (
    echo Le fichier Bash n'existe pas
    echo Vérification de l'existence du fichier Batch...
    if exist %pathToCreateProjectCmd% (
        echo Le fichier Batch existe
        echo Exécution de %pathToCreateProjectCmd%...
        %pathToCreateProjectCmd%
    ) else (
        echo ERREUR : Aucun des fichiers de création de structure n'existe
    )
)