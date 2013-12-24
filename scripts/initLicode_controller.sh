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

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ROOT/erizo/build/erizo:$ROOT/erizo:$ROOT/build/libdeps/build/lib
export ERIZO_HOME=$ROOT/erizo/                                                  
                                                                                
                                                                                
cp $ROOT/erizo_controller/erizoClient/dist/erizo.js $EXTRAS/basic_example/public/

echo [licode] Done, run basic_example/basicServer.js
