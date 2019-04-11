#!/bin/sh
set -e

echo "Starting install"
yarn global add gatsby && yarn 
echo "Finishing install"

echo "Starting Gatsby developing"
gatsby develop --H 0.0.0.0
