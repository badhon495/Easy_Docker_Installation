# Uninstall Docker-related packages
packages="docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc"
sudo apt remove -y $packages docker-engine docker docker-ce docker-ce-cli docker-compose-plugin
sudo apt purge -y docker-engine docker docker.io docker-ce docker-compose-plugin
sudo apt autoremove -y --purge
sudo rm -rf /var/lib/docker /etc/docker /var/lib/containerd /etc/apparmor.d/docker /var/run/docker.sock
sudo rm -rf /usr/local/bin/docker-compose*

# Remove Docker group
sudo groupdel docker

# Add Docker repository and GPG key
sudo apt update
sudo apt install -y ca-certificates curl
sudo mkdir -p /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add Docker's official repository
source /etc/os-release
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian $VERSION_CODENAME stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update

# Install Docker Engine
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Add Docker Group so that you can run Docker commands without sudo
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Verify the installation
docker run hello-world