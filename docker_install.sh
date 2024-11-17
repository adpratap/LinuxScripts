#!/bin/bash

echo "Updating package list..."
sudo apt update -y

echo "Installing Docker..."
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker $(whoami)

echo "Installing the latest Docker Compose..."
LATEST_COMPOSE_VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep -oP '"tag_name": "\K[^"]+')
sudo curl -L "https://github.com/docker/compose/releases/download/${LATEST_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "Docker and Docker Compose installation complete!"
sudo docker --version
sudo docker-compose --version

