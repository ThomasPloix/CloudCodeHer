#!/bin/bash

# Script pour configurer un système, installer Docker et lancer un conteneur Tetris
# Ce script doit être exécuté avec des privilèges sudo.

# Étape 1 : Configuration des paquets
echo "Configuration des paquets en attente && Mise à jour des paquets..."
sudo dpkg --configure -a && sudo apt update -y
echo "Installation des configurations de base."

# Étape 3 : Installation de Docker
echo "Installation de Docker..."
sudo apt install -y docker.io

# Étape 4 : Téléchargement de l'image Docker pour Tetris
echo "Téléchargement de l'image Docker pour Tetris... "
sudo docker pull uzyexe/tetris && sudo docker run -d -p 80:80 --name tetris uzyexe/tetris

# Fin du script
echo "Script terminé avec succès. Vous pouvez accéder au jeu Tetris sur le port 8080."