#!/bin/bash

# Check for /etc/os-release file, which is present in most Linux distributions
if [ -f /etc/os-release ]; then
    # Source the file to get the distribution information
    . /etc/os-release
    echo "You are using $NAME $VERSION"

    # Check if the distribution is Linux Mint
    if [ "$NAME" = "Linux Mint" ]; then
        echo "Linux Mint detected. Executing the command..."
        curl -sL https://raw.githubusercontent.com/badhon495/Easy_Docker_Installation/main/Mint.sh | bash

    # Check if the distribution is LMDE (Linux Mint Debian Edition)
    elif [ "$NAME" = "LMDE" ]; then
        echo "LMDE detected. Executing the command..."
        curl -sL https://raw.githubusercontent.com/badhon495/Easy_Docker_Installation/main/LMDE.sh | bash

    # Check if the distribution is Kali Linux
    elif [ "$NAME" = "Kali GNU/Linux" ]; then
        echo "Kali Linux detected. Executing the command..."
        curl -sL https://raw.githubusercontent.com/badhon495/Easy_Docker_Installation/main/Kali.sh | bash

    # Check if the distribution is Fedora
    elif [ "$NAME" = "Fedora" ]; then
        echo "Fedora detected. Executing the command..."
        curl -sL https://raw.githubusercontent.com/badhon495/Easy_Docker_Installation/main/Fedora.sh | bash

    # Check if the distribution is Ubuntu
    elif [ "$NAME" = "Ubuntu" ]; then
        echo "Ubuntu detected. Executing the command..."
        curl -sL https://raw.githubusercontent.com/badhon495/Easy_Docker_Installation/main/Ubuntu.sh | bash

    else
        echo "Distribution not specifically handled. No command to execute."
    fi

else
    echo "Unable to determine the Linux distribution. /etc/os-release not found."
fi
