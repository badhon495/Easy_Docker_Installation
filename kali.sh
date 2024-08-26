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
curl -fsSL https://download.docker.com/linux/debian/gpg

# Install Docker Engine
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
