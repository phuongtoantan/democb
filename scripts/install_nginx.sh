#!/bin/bash

# Update the package list
yum update -y

# Install Nginx
yum install -y nginx

# Enable Nginx to start on boot
systemctl enable nginx

# Start Nginx service
systemctl start nginx