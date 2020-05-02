#!/usr/bin/env bash

# First start the react application, then the electron app

echo "First start the react application"

cd ./osbourne/

rm -rf ./logs
mkdir logs
touch ./logs/react.log

yarn && yarn start &> ./logs/react.log &

echo "Now start Electron"

cd ..

rm -rf ./logs
mkdir logs
touch ./logs/electron.log
yarn && yarn start &> ./logs/electron.log &
