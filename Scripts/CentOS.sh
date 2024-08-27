# Remove existing Docker packages without prompting for confirmation
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

# Remove Docker group
sudo groupdel docker

# Install YUM plugins core
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker and related packages
sudo yum install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Add Docker Group so that you can run Docker commands without sudo
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

# Start and enable Docker service and verify the installation
sudo systemctl start docker
sudo systemctl enable docker
docker run hello-world