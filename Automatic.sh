#!/bin/bash

# Check for /etc/os-release file, which is present in most Linux distributions
if [ -f /etc/os-release ]; then
    # Source the file to get the distribution information
    . /etc/os-release
    echo "You are using $NAME $VERSION"

    #  # Check if the distribution is Fedora
    if [ "$NAME" = "Fedora" ]; then
        echo "Fedora detected. Executing the command..."
        curl -sL https://raw.githubusercontent.com/badhon495/Easy_Docker_Installation/main/Scripts/Fedora.sh | bash

    # Check if the distribution is CentOS
    elif [ "$NAME" = "CentOS Linux" ]; then
        echo "CentOS detected. Executing the command..."
        curl -sL https://raw.githubusercontent.com/badhon495/Easy_Docker_Installation/main/Scripts/CentOS.sh | bash

    # Check if the distribution is Kali Linux
    elif [ "$NAME" = "Kali GNU/Linux" ]; then
        echo "Kali Linux detected. Executing the command..."
        curl -sL https://raw.githubusercontent.com/badhon495/Easy_Docker_Installation/main/Scripts/Kali.sh | bash

    # Check if the distribution is Debian
    elif [ "$NAME" = "Debian GNU/Linux" ]; then
        echo "Debian detected. Executing the command..."
        curl -sL https://raw.githubusercontent.com/badhon495/Easy_Docker_Installation/main/Scripts/Debian.sh | bash
    
    # Check if the distribution is Linux Mint
    elif [ "$NAME" = "Linux Mint" ]; then
        echo "Linux Mint detected. Executing the command..."
        curl -sL https://raw.githubusercontent.com/badhon495/Easy_Docker_Installation/main/Scripts/Mint.sh | bash

    # Check if the distribution is LMDE (Linux Mint Debian Edition)
    elif [ "$NAME" = "LMDE" ]; then
        echo "LMDE detected. Executing the command..."
        curl -sL https://raw.githubusercontent.com/badhon495/Easy_Docker_Installation/main/Scripts/LMDE.sh | bash

    # Check if the distribution is Ubuntu
    elif [ "$NAME" = "Ubuntu" ]; then
        echo "Ubuntu detected. Executing the command..."
        curl -sL https://raw.githubusercontent.com/badhon495/Easy_Docker_Installation/main/Scripts/Ubuntu.sh | bash

    else
        echo "Distribution not specifically handled. Try the manual installation steps."
    fi

else
    echo "Unable to determine the Linux distribution. /etc/os-release not found."
fi
