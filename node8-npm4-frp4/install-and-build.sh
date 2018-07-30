#!/bin/bash

for FILENAME in package.json frp.config.js; do
    if [ ! -f $FILENAME ]; then
        echo "ERROR: ${FILENAME} not found at $(pwd)"
        echo "Have you mounted the project folder to the proper working directory in the container?"
        exit 1
    fi
done

echo "Installing dependencies from NPM..."
npm install

echo "Building frontend resources in production mode..."
frp build --production

echo "Build completed"
exit 0
