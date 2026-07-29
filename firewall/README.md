# Firewall

This project covers setting up a basic firewall using ufw (Uncomplicated Firewall) on Ubuntu servers.

## Background

A firewall is a hardware or software security system that filters incoming and outgoing network traffic based on a defined set of rules. Without a firewall, all ports on a server are exposed, leaving it vulnerable to unauthorized access.

## Tasks

### 0. Block all incoming traffic but...

File: 0-block_all_incoming_traffic_but

Configures ufw on web-01 to block all incoming traffic except on the following TCP ports:
- 22 (SSH)
- 80 (HTTP)
- 443 (HTTPS)

Commands used:

sudo apt update
sudo apt install ufw -y
sudo ufw allow 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw enable

Note: Port 22 must be allowed before running sudo ufw enable, otherwise the SSH session will be locked out and the server won't be reachable again.
