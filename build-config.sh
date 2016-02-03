#!/bin/bash

mkdir -p node_modules
cd node_modules
mkdir -p node_modules
mv * node_modules
ln -s ../src ep_etherpad-lite
mv node_modules ep_etherpad-lite
cd ..

sed -i s/ADMIN_PASSWD/$ADMIN_PASSWD/g settings.json
sed -i s/USER_PASSWD/$USER_PASSWD/g   settings.json
