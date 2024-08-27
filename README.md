# Easy-Docker-Installation

Skip the manual and get Docker up and running with a single click! This streamlined shell script handles everything—from uninstalling old packages to setting up Docker on your Debian-based system. No fuss, no hassle—just pure automation. Perfect for anyone who wants Docker installed quickly and efficiently!
This project is currently available for Kali Linux, Linux Mint Debian Edition, Fedora, and Linux Mint.

## One Click Installation

Run this following command on the terminal to install Docker with a single click:

```bash
curl -sL https://raw.githubusercontent.com/badhon495/Easy_Docker_Installation/main/Automatic.sh | bash
```

## Manual Installation

If one-click installation doesn't work, you can use the following commands to install Docker on your system manually. Before running any of these commands run `sudo cat /etc/os-release` to know what are you currently using:

### Kali Linux

```bash
curl -sL https://raw.githubusercontent.com/badhon495/Easy_Docker_Installation/main/kali.sh | bash
```

### Linux Mint Debian Edition

```bash
curl -sL https://raw.githubusercontent.com/badhon495/Easy_Docker_Installation/main/LMDE.sh | bash
```

### Fedora

```bash
curl -sL https://raw.githubusercontent.com/badhon495/Easy_Docker_Installation/main/Fedora.sh | bash
```

### Linux Mint

```bash
curl -sL https://raw.githubusercontent.com/badhon495/Easy_Docker_Installation/main/Mint.sh | bash
```

## Contribution

As I could not do write the script for all the Linux distributions, I would appreciate if you could contribute to this project by writing a script for your distribution. Just follow the format of the existing scripts and make a pull request. I will review it and merge it if it works.
