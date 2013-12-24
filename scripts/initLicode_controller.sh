#!/bin/bash

SCRIPT=`pwd`/$0
FILENAME=`basename $SCRIPT`
PATHNAME=`dirname $SCRIPT`
ROOT=$PATHNAME/..
BUILD_DIR=$ROOT/build
CURRENT_DIR=`pwd`
EXTRAS=$ROOT/extras

export PATH=$PATH:/usr/local/sbin

sudo echo

sudo rabbitmq-server > $BUILD_DIR/rabbit.log &

cd $ROOT/nuve
./initNuve.sh

cp $ROOT/nuve/nuveClient/dist/nuve.js $EXTRAS/basic_example/

echo [licode] Done, run basic_example/basicServer.js
