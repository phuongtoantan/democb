
#!/bin/bash

if pgrep nginx > /dev/null
then
    echo "Stopping Nginx..."
    systemctl stop nginx
else
    echo "Nginx is not running."
fi
rm -f /usr/share/nginx/html/index.html