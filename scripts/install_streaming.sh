#!/bin/bash
./licode/scripts/installUbuntuDeps_streaming.sh
./licode/scripts/installErizo.sh
./licode/scripts/initLicode_streaming.sh

echo "installed streaming server but we also installed nuve module for emergency case(s)"
echo 'please input "./licode/scripts/node.sh" to /etc/rc.local'
