# Uninstall Docker-related packages
packages="docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc"
sudo apt remove -y $packages docker-engine docker docker-ce docker-ce-cli docker-compose-plugin
sudo apt purge -y docker-engine docker docker.io docker-ce docker-compose-plugin
sudo apt autoremove -y --purge
sudo apt-get autoclean -y
sudo rm -rf /var/lib/docker /etc/docker /var/lib/containerd /etc/apparmor.d/docker /var/run/docker.sock
sudo rm -rf /usr/local/bin/docker-compose*
sudo rm -rf /var/run/docker.sock
sudo rm -rf /usr/local/bin/docker*
sudo find / -iname 'docker*' -exec rm -rf {} +

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
echo "To verify the installation, run the following command:"
echo "docker run hello-world"
echo "----------------------------------------"
