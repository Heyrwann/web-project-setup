@echo off
setlocal enabledelayedexpansion
chcp 65001 > nul

::=========================================
:: Création de la structure d'un projet Web
::=========================================

echo [BIP] Initialisation de la création de la structure...

::===
:: Demander le chemin et le nom du projet à l'utilisateur
::===

:: Indiquer à l'utilisateur dans quel répertoire il se trouve
echo [BIP] Répertoire actuel :
echo -----
pwd
echo -----

:: Demander à l'utilisateur d'indiquer où le programme doit créer le projet
set /p projectPath=[BIP] Indiquer où je doit créer le projet :
echo [BIP] Le chemin donné est : "%projectPath%"

:: Vérifier si le chemin existe
if exist "%projectPath%\" (
    echo le chemin "%projectPath%" existe.
    goto :createProjectStructure
) else (
    echo le chemin "%projectPath%" n'existe pas.
    call :askYesNo "Voulez-vous le créer ?"

    if !userChoice! equ 0 (
        echo Création de "%projectPath%"...
        mkdir "%projectPath%" 2>nul && (
            echo Le chemin a été créé avec succès.
        ) || (
            echo Erreur : Impossible de créer "%projectPath%"
        )
    ) else (
        echo Opération annulée
        goto :end
    )
)

:: goto :createProjectStructure

::===
:: Créer la structure du projet web
::===

:: Création du dossier et déplacement dedans
:: :createProjectStructure
:: Demander à l'utilisateur de saisir un nom de projet
set /p projectName=[BIP] Saisissez le nom du projet : 
echo [BIP] Le nom du projet sera : "%projectName%"

echo [BIP] Création du dossier projet
cd %projectPath%
mkdir %projectName%
echo [BIP] Dossier %projectName% créé
cd %projectName%

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
echo [BIP] Dossier .well-known/ créé

:: Remplissage de assets/
cd assets
mkdir css fonts js
cd css
echo. > style.css
echo. > style.css.map
cd ../fonts
echo. > NotoSans-VariableFont.woff2
echo. > OFL.txt
echo. > README.txt
cd ../js
echo. > app.js
cd ../..
echo [BIP] Dossier assets/ créé

:: Remplissage de img/
cd img
mkdir icons
cd ..
echo [BIP] Création du dossier img/ 

:: Remplissage de pages/
cd pages
echo. > about.html
echo. > article-details.html
echo. > blog.html
echo. > contact.html
echo. > cookies-policy.html
echo. > faq.html
echo. > legal-notice.html
echo. > portfolio.html
echo. > privacy-policy.html
echo. > project-details.html
echo. > search-results.html
echo. > service-details.html
echo. > services.html
echo. > team.html
echo. > terms-conditions.html
echo. > testimonials.html
cd ..
echo [BIP] Dossier pages/ créé

:: Remplissage de scss/
cd scss
mkdir abstracts base components layouts pages utilities
echo. > style.scss
cd abstracts
echo. > _function.scss
echo. > _index.scss
echo. > _mixins.scss
echo. > _variables.scss
cd ../base
echo. > _fonts.scss
echo. > _global.scss
echo. > _index.scss
echo. > _reset.scss
echo. > _root.scss
echo. > _typography.scss
cd ../components
echo. > _buttons.scss
echo. > _card.scss 
echo. > _icons.scss 
echo. > _index.scss
cd ../layouts
echo. > _container.scss
echo. > _footer.scss
echo. > _header.scss
echo. > _index.scss
cd ../pages
echo. > _about.scss
echo. > _home.scss
echo. > _index.scss
cd ../utilities
echo. > _accessibility.scss
echo. > _alignment.scss
echo. > _display.scss
echo. > _flexbox.scss
echo. > _grid.scss
echo. > _index.scss
echo. > _spacing.scss
echo. > _visibility.scss
cd ../..
echo [BIP] Dossier scss/ créé

:: Remplissage de docs/
cd docs
mkdir architecture diagrams security
echo. > workflow.md
echo. > README.md
cd architecture
echo. > overview.md
cd ..
echo [BIP] Dossier docs/ créé
cd ..

:: Programme terminé
:end
echo [BOOP] Programme terminé
echo ------------
exit

:: Fonction utilitaire askYesNo pour récolter le prompt (o/n) de l'utilisateur
:askYesNo
    set "question=%~1"

    :askLoop
        set /p "userInput=%question% (o/n) : "
        
        if /i "!userInput!"=="o" (
            echo Vous avez répondu Oui.
            set "userChoice=0"
            exit /b 0
        ) 
        if /i "!userInput!"=="n" (
            echo Vous avez répondu Non.
            set "userChoice=1"
            exit /b 1
        )

        test="!userInput!"
        echo Vous avez entré "%userInput%"
        echo Test : "%test%"
        echo Réponse invalide. Veuillez entrer 'o' ou 'n'.
        goto :askLoop