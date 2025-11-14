# Web Project Setup

_Un outil multiplateforme pour générer automatiquement une structure de projet web._

---

## Aperçu

Ce projet permet de **créer une structure de projet web** en une seule commande, avec :

- **Support multiplateforme** : Fonctionne sous **Windows** et **Lunix**.
- **Scripts interactifs** : Demande le **nom du projet** et le **chemin de destination**.
- **Support UTF-8** : Gère les caractères accentués.

---

## Installation

### Prérequis

- **Windows** : Vérifier que `bash` soit installé (avec Git Bash par exemple)
- **Linux** : Vérifier que `bash` soit installé

### Étapes

1. Cloner ce dépôt ou télécharger les scripts :

```bash
git clone https://github.com/Heyrwann/web-project-setup.git
```

2. Accéder au dossier du projet :

```bash
cd web-project-setup
```

---

## Utilisation

### Sur Windows

Lancer le script `wps.cmd` pour lancer le script de création :

```cmd
.\wps.cmd
```

### Sur Linux

Lancer le script `wps.sh` pour lancer le script de création :

```bash
./wps.sh
```

### Démonstrations de fonctionnement

Regarder dans [le dossier ./docs/videos](./docs/videos/) pour observer le fonctionnement des scripts.

---

## Structure générée

```
mon-site-exemple
├─ .browserslistrc                         
├─ .well-known                             
│  └─ security.txt                         
├─ 403.html                                
├─ 404.html                                
├─ LICENSE                                 
├─ README.md                               
├─ assets                                  
│  ├─ css                                  
│  │  ├─ style.css                         
│  │  └─ style.css.map                     
│  ├─ fonts                                
│  │  ├─ NotoSans-VariableFont.woff2      
│  │  ├─ OFL.txt                           
│  │  └─ README.txt                        
│  └─ js                                   
│     └─ app.js                            
├─ favicon.png
├─ img                                     
│  ├─ icons                                
│  │  ├─ android-icon-144x144.png
│  │  ├─ android-icon-192x192.png
│  │  ├─ android-icon-36x36.png
│  │  ├─ android-icon-48x48.png
│  │  ├─ android-icon-72x72.png
│  │  ├─ android-icon-96x96.png
│  │  ├─ apple-icon-114x114.png
│  │  ├─ apple-icon-120x120.png
│  │  ├─ apple-icon-144x144.png
│  │  ├─ apple-icon-152x152.png
│  │  ├─ apple-icon-180x180.png
│  │  ├─ apple-icon-57x57.png
│  │  ├─ apple-icon-60x60.png
│  │  ├─ apple-icon-72x72.png
│  │  ├─ apple-icon-76x76.png
│  │  ├─ apple-icon-precomposed.png
│  │  ├─ apple-icon.png
│  │  ├─ favicon-16x16.png
│  │  ├─ favicon-32x32.png
│  │  ├─ favicon-96x96.png
│  │  ├─ favicon.png
│  │  ├─ ms-icon-144x144.png
│  │  ├─ ms-icon-150x150.png
│  │  ├─ ms-icon-310x310.png
│  │  └─ ms-icon-70x70.png
│  ├─ logo-110x110.webp
│  ├─ logo-160x160.webp
│  ├─ logo-200x200.webp
│  ├─ logo-800x800.webp
│  └─ logo-96x96.webp
├─ index.html                              
├─ package-lock.json                       
├─ package.json                            
├─ pages                                   
│  ├─ about.html                           
│  ├─ article-details.html                 
│  ├─ blog.html                            
│  ├─ contact.html                         
│  ├─ cookies-policy.html                  
│  ├─ faq.html                             
│  ├─ legal-notice.html                    
│  ├─ portfolio.html                       
│  ├─ privacy-policy.html                  
│  ├─ project-details.html                 
│  ├─ search-results.html                  
│  ├─ service-details.html                 
│  ├─ services.html                        
|  ├─ team.html                            
│  ├─ terms-conditions.html                
│  └─ testimonials.html                    
├─ robots.txt                          
├─ scss                                    
│  ├─ abstracts                          
│  │  ├─ _functions.scss                   
│  │  ├─ _index.scss                       
│  │  ├─ _mixins.scss                      
│  │  └─ _variables.scss                   
│  ├─ base                                 
│  │  ├─ _fonts.scss                       
│  │  ├─ _global.scss                      
│  │  ├─ _index.scss                       
│  │  ├─ _reset.scss                       
│  │  ├─ _root.scss                        
│  │  └─ _typography.scss                  
│  ├─ components                           
│  │  ├─ _buttons.scss                     
│  │  ├─ _card.scss                        
│  │  ├─ _icons.scss                       
│  │  └─ _index.scss                       
│  ├─ layouts                              
│  │  ├─ _container.scss                   
│  │  ├─ _footer.scss                      
│  │  ├─ _header.scss                      
│  │  └─ _index.scss                       
│  ├─ pages                                
│  │  ├─ _about.scss                       
│  │  ├─ _home.scss                        
│  │  └─ _index.scss                       
│  ├─ style.scss                           
│  └─ utilities                            
│     ├─ _accessibility.scss               
│     ├─ _alignment.scss                   
│     ├─ _display.scss                     
│     ├─ _flexbox.scss                     
│     ├─ _grid.scss                        
│     ├─ _index.scss                       
│     ├─ _spacing.scss                     
│     └─ _visibility.scss                  
├─ sitemap.xml                             
├─ docs                                    
│  ├─ architecture                         
│  │  └─ overview.md                       
│  ├─ diagrams                             
│  ├─ security                             
│  ├─ workflow.md
│  └─ README.md                            
└─ .editorconfig                           
```

NB: Le contenu du dossier `icons`, ainsi que `package.json` et `package-lock.json` ne seront pas générés.

---

## Preview

https://github.com/user-attachments/assets/0ca4cc21-d91f-46de-bb68-7b9570bfabda

---

## Licence

Ce projet est sous licence [MIT](LICENSE).
