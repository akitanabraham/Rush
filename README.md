# 🎮 Devine le fichier mystère — Jeu en Bash

## 📚 Description

Petit jeu en ligne de commande (Bash) pour apprendre à manipuler les bases du terminal Linux.  
Le joueur doit deviner le nom d’un fichier mystère parmi ceux présents dans un dossier.

Ce projet a été réalisé dans le cadre d'un mini-projet hebdomadaire Rush codelocol, après avoir appris à :
- afficher du texte,
- lire la date/heure,
- lister des fichiers,
- créer des dossiers,
- vérifier l’existence d’un fichier.

## ⚙️ Fonctionnement

1. Le script vérifie si le dossier `zone_jeu` existe :
   - S’il n'existe pas, il le crée et demande à l’utilisateur d’y ajouter des fichiers.
2. Si des fichiers sont présents, le script choisit un fichier **au hasard**.
3. L’utilisateur doit deviner le nom de ce fichier.
4. Le script donne des indices : fichier correct, incorrect mais existant, ou inexistant.
5. Le jeu se termine quand le joueur trouve le bon fichier.

## 🛠️ Technologies utilisées

- Bash (Shell Script)
- Commandes : `echo`, `read`, `date`, `ls`, `mkdir`, `[ -f ]`, `shuf`

## 📦 Installation et exécution

```bash
# 1. Rendre le script exécutable
chmod +x Terminal_Hero.sh

# 2. Exécuter le script
./Terminal_Hero.sh
```

## 📁 Préparation

Avant de jouer, ajoute quelques fichiers dans le dossier `zone_jeu` :

```bash
touch zone_jeu/fichier1.txt
touch zone_jeu/test.log
touch zone_jeu/image.png
```

## 🧪 Exemple de session

```
Bienvenue dans le jeu : Devine le fichier mystère !
Début du jeu : 2025-05-11 14:00:00

🔎 Devinez le nom d’un fichier dans 'zone_jeu' : fichier1.txt
🙈 Mauvais fichier, mais ce fichier existe.

🔎 Devinez le nom d’un fichier dans 'zone_jeu' : test.log
🎉 Bravo ! Vous avez deviné le bon fichier : test.log
```

## 📄 Auteur

Projet réalisé par Rush6 dans le cadre d'une formation à Bash.