# Uninstall Docker-related packages
sudo apt remove -y docker.io docker-compose
sudo apt autoremove -y --purge
sudo apt-get autoclean -y

# Remove Docker group
sudo groupdel docker

# Add Docker repository and GPG key
curl -fsSL https://download.docker.com/linux/debian/gpg

# Install Docker Engine
sudo apt install -y docker.io

# Add Docker Group so that you can run Docker commands without sudo
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Verify the installation
echo "----------------------------------------"
echo "Docker has been installed successfully."
echo "----------------------------------------"
echo "Now reboot your system to apply the changes then run the following command to verify the installation:"
echo "----------------------------------------"
echo "docker run hello-world"
echo "----------------------------------------"
