#!/bin/sh
sysrc -f /etc/rc.conf lidarr_enable="YES"

#62991
chown -R lidarr:lidarr /usr/local/share/lidarr

#we need write permission to be able to write plugins update. #53127
chmod 755 /usr/local/share/lidarr

# Start the services
service lidarr start
