#!/bin/bash

# Mettre à jour la liste des paquets
echo "Mise à jour de la liste des paquets..."
sudo apt update

# Installer les paquets nécessaires pour ajouter un dépôt HTTPS
echo "Installation des paquets nécessaires..."
sudo apt install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Ajouter la clé GPG officielle de Docker
echo "Ajout de la clé GPG de Docker..."
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Ajouter le dépôt Docker aux sources de paquets
echo "Ajout du dépôt Docker pour Debian..."
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Mettre à jour la liste des paquets avec le nouveau dépôt Docker
echo "Mise à jour de la liste des paquets pour inclure Docker..."
sudo apt update

# Installer Docker Engine, Docker CLI et le plugin containerd
echo "Installation de Docker Engine..."
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Vérifier que Docker est bien installé et fonctionnel
echo "Vérification de l'installation de Docker..."
sudo systemctl enable docker
sudo systemctl start docker
sudo docker --version
sudo docker compose version
