#!/bin/sh

# Init submodule
git submodule update --init

# Install deps and build contracts
cd rocketpool
npm install

# Run test script
cd -
node verify.js