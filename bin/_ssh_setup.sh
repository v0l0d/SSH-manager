#!/bin/bash

if [ "x$1" = "x" ]; then
    echo "usage $0 <name>"
    exit 1
fi

cp _env.sh env.$1.sh
chmod +x env.$1.sh

ln -s _ssh.sh ssh.$1.sh 
ln -s _scp_from.sh scp_from.$1.sh 
ln -s _scp_to.sh scp_to.$1.sh 


