# Web Stack Debugging #1

This project is about debugging why Nginx is not listening on port 80 inside a fresh Ubuntu 20.04 Docker container, and writing a Bash script that fixes it automatically.

## Task 0: Nginx likes port 80

File: 0-nginx_likes_port_80

On a fresh Ubuntu 20.04 container, Nginx is not installed and therefore not listening on port 80, so curl 0:80 returns a connection refused error.

The fix installs Nginx and starts the service:

    apt-get update
    apt-get install -y nginx
    service nginx start

After running this script, Nginx listens on port 80 and returns the default Nginx welcome page.
