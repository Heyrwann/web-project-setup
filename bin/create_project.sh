############################################
# Création de la structure d'un projet Web #
############################################

echo "[BIP] Début du programme... [BOOP]"

# Création du dossier projet et déplacement dedans
echo "[BIP] Création du dossier projet [BOOP]"
mkdir mon-site-example
cd mon-site-example

# Création des dossiers de premier niveau
mkdir .well-known assets img pages scss docs

# Création des fichiers de premier niveau
touch .browserslistrc 403.html 404.html LICENSE README.md favicon.png index.html robots.txt sitemap.xml .editorconfig

# Remplissage .well-known/
cd .well-known
touch security.txt
cd ..
echo "[BIP] Création du dossier .well-known/ [BOOP]"

# Remplissage assets/
cd assets
mkdir css fonts js
cd css
touch style.css style.css.map
cd ../fonts
touch NotoSans-VariableFont.woff2 OFL.txt README.txt
cd ../js
touch app.js
cd ../..
echo "[BIP] Création du dossier assets/ [BOOP]"

# Remplissage img/
cd img
mkdir icons
cd ..
echo "[BIP] Création du dossier img/ [BOOP]"

# Remplissage pages/
cd pages
touch about.html article-details.html blog.html contact.html cookies-policy.html faq.html legal-notice.html portfolio.html privacy-policy.html project-details.html search-results.html service-details.html services.html team.html terms-conditions.html testimonials.html
cd ..
echo "[BIP] Création du dossier pages/ [BOOP]"

# Remplissage scss/
cd scss
mkdir abstracts base components layouts pages utilities
touch style.scss
cd abstracts
touch _function.scss _index.scss _mixins.scss _variables.scss
cd ../base
touch _fonts.scss _global.scss _index.scss _reset.scss _root.scss _typography.scss
cd ../components
touch _buttons.scss _card.scss _icons.scss _index.scss
cd ../layouts
touch _container.scss _footer.scss _header.scss _index.scss
cd ../pages
touch _about.scss _home.scss _index.scss
cd ../utilities
touch _accessibility.scss _alignment.scss _display.scss _flexbox.scss _grid.scss _index.scss _spacing.scss _visibility.scss
cd ../..
echo "[BIP] Création du dossier scss/ [BOOP]"

# Remplissage docs/
cd docs
mkdir architecture diagrams security
touch architecture/overview.md workflow.md README.md
echo "[BIP] Création du dossier docs/ [BOOP]"
cd ..

## Programme terminé
echo "[BIP] ...Programme terminé [BIP]"
