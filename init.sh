#!/bin/bash

# if user id not specified then use default of nobody 
if [[ -z "${UID}" ]]; then
	UID="nobody"
fi

# if group id not specifed then use default of users
if [[ -z "${GID}" ]]; then
	GID="users"
fi

echo "[info] User ID defined as ${UID}"
echo "[info] Group ID defined as ${GID}"
echo "[info] Setting permissions..."

# set permissions for /config volume mapping
chown -R $UID:$GID /config
chmod -R 775 /config

# set permissions inside container
chown -R $UID:$GID /usr/bin/tvheadend /run
chmod -R 775 /usr/bin/tvheadend /run

echo "[info] Starting Supervisor..."

# run supervisor
"/usr/bin/supervisord" -c "/etc/supervisor.conf" -n