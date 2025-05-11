#!/bin/bash

echo "Bienvenue dans le jeu : Devine le fichier mystère !"
echo "Début du jeu : $(date '+%Y-%m-%d %H:%M:%S')"
echo

if [ ! -d "zone_jeu" ]; then
  mkdir zone_jeu
  echo "💡 Un dossier 'zone_jeu' a été créé. Placez-y quelques fichiers pour jouer."
  echo "Puis relancez le script."
  exit 1
fi

files=($(ls zone_jeu))
if [ ${#files[@]} -eq 0 ]; then
  echo "❌ Aucun fichier trouvé dans 'zone_jeu'. Ajoutez-en pour jouer."
  exit 1
fi

target_file=$(ls zone_jeu | shuf -n 1)

while true; do
  read -p "🔎 Devinez le nom d’un fichier dans 'zone_jeu' : " guess
  if [ "$guess" = "$target_file" ]; then
    echo "🎉 Bravo ! Vous avez deviné le bon fichier : $target_file"
    break
  else
    if [ -f "zone_jeu/$guess" ]; then
      echo "🙈 Mauvais fichier, mais ce fichier existe."
    else
      echo "❌ Ce fichier n’existe pas dans 'zone_jeu'."
    fi
  fi
done
