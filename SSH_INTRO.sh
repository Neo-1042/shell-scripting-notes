#!/bin/sh

echo "SSH = Secure Shell"

USER="my_user"
HOSTNAME="some_ip_address"

echo "Connecting via SSH to hostname = ${HOSTNAME}"
ssh ${USER}@${HOSTNAME}

# SSH Keys are useful to identify yourself to an SSH server using public-key cryptography and 
# challenge response authentication. The major advantage of key-based authentication is that,
# in contrast to password authentication, it is not prone to brute-force attacks.

ssh-keygen

ssh-copy-id user@hostname

ssh neo@127.0.0.0 -p 22 # port 22

# SSH has a daemon setup (service) and it is now listening for incoming connections on port 22

# SCP command: copy over files from your local machine to the remote SSH server

sudo systemctl start sshd # 'sshd' for Arch Linux, 'ssh' for Debian

systemctl status

# Exposing your system to the internet

sudo nvim /etc/ssh/sshd_config
# PasswordAuthentication no
# AllowUsers Rodrigo

# Firewalls:
sudo ufw allow ssh
