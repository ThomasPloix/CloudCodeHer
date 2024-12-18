#!/bin/bash

# Script pour configurer un système, installer Docker et lancer un conteneur Tetris
# Ce script doit être exécuté avec des privilèges sudo.

# Étape 1 : Configuration des paquets
echo "Configuration des paquets en attente..."
sudo dpkg --configure -a
echo "Première commande exécutée avec succès."

# Étape 2 : Mise à jour des paquets du système
echo "Mise à jour des paquets..."
sudo apt update -y

# Étape 3 : Installation de Docker
echo "Installation de Docker..."
sudo apt install -y docker.io

# Étape 4 : Téléchargement de l'image Docker pour Tetris
echo "Téléchargement de l'image Docker pour Tetris..."
sudo docker pull uzyexe/tetris

# Étape 5 : Lancement d'un conteneur Docker pour Tetris
echo "Lancement du conteneur Docker pour Tetris..."
sudo docker run -d -p 8080:80 --name tetris uzyexe/tetris

# Étape 6 : Vérification des conteneurs en cours d'exécution
echo "Vérification des conteneurs en cours d'exécution..."
sudo docker ps

# Fin du script
echo "Script terminé avec succès. Vous pouvez accéder au jeu Tetris sur le port 8080."