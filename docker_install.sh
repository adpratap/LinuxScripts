echo "Updating package list..."
sudo apt update

echo "Installing Docker..."
curl -sSL https://get.docker.com | sh
sudo usermod -aG docker $(whoami)

echo "Installing Docker Compose..."
sudo curl -L "https://github.com/docker/compose/releases/download/v2.20.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo "Docker and Docker Compose installation complete!"
sudo docker --version
sudo docker-compose --version
