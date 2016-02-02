#!/bin/bash

mkdir -p node_modules
cd node_modules
[ -e ep_etherpad-lite ] || ln -s ../src ep_etherpad-lite
cd ../src
[ -e node_modules ] || ln -s ../node_modules node_modules
cd ..

sed -i s/ADMIN_PASSWD/$ADMIN_PASSWD/g settings.json
sed -i s/USER_PASSWD/$USER_PASSWD/g   settings.json
