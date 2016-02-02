#!/bin/bash

mkdir -p node_modules
cd node_modules
[ -eep_etherpad-lite ] || ln -s ../src ep_etherpad-lite
cd ..

sed -i s/ADMIN_PASSWD/$ADMIN_PASSWD/g settings.json
sed -i s/USER_PASSWD/$USER_PASSWD/g   settings.json
