#!/bin/sh

WORKING_DIRECTORY="$(pwd)"

cd "$( dirname $0 )"
cd ..

cargo clippy --target wasm32-unknown-unknown -- -D warnings
bin/build.sh

cd $WORKING_DIRECTORY
