#!/bin/bash

mkdir -p node_modules
[ -e node_modules/ep_etherpad-lite ] || ln -s src node_modules/ep_etherpad-lite

sed -i s/ADMIN_PASSWD/$ADMIN_PASSWD/g settings.json
sed -i s/USER_PASSWD/$USER_PASSWD/g   settings.json
