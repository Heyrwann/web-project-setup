@echo off
chcp 65001 > nul

::=========================================
:: Création de la structure d'un projet Web
::=========================================

echo [BIP] Début du programme... [BOOP]

::===
:: Créer la structure du projet web
::===

:: Création du dossier projet et déplacement dedans
echo [BIP] Création du dossier projet [BOOP]
mkdir "example-project"
cd example-project

:: Création des dossiers de premier niveau
mkdir .well-known assets img pages scss docs

:: Création des fichiers de premier niveau
echo. > .browserslistrc
echo. > 403.html
echo. > 404.html
echo. > LICENSE
echo. > README.md
echo. > favicon.png
echo. > index.html
echo. > robots.txt
echo. > sitemap.xml
echo. > .editorconfig

:: Remplissage de .well-known/
cd .well-known
echo. > security.txt
cd ..
echo "[BIP] Dossier .well-known/ créé [BOOP]"