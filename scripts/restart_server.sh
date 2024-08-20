#!/bin/bash

# Check if Nginx is already running
if pgrep nginx > /dev/null
then
    echo "Nginx is running. Restarting the service..."
    systemctl restart nginx
else
    echo "Nginx is not running. Starting the service..."
    systemctl start nginx
fi

# Verify that the service is running
if pgrep nginx > /dev/null
then
    echo "Nginx has started successfully."
else
    echo "Nginx failed to start."
    exit 1
fi