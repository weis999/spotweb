#!/bin/bash

source base.sh

if [ ! -n "$server_ps" ]; then
	$docker_exec run -d --link="${name_db}:${name_db}" -h $name_server -p "80:80" --name="${name_server}" isuftin/spotweb:latest > spotweb.cid
else
	echo "Spotweb server already running with ID: $server_ps"
	echo $server_ps > spotweb.cid
fi
