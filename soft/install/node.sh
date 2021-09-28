#!/bin/sh

echo ' begin install node'

brew install yarn

curl https://raw.githubusercontent.com/creationix/nvm/v0.13.1/install.sh | bash

nvm install v12.8.0
nvm use v12.8.0
nvm alias default v12.8.0

echo ' end node '
