#!/bin/bash

script_dir=`dirname $0`

. $script_dir/_ssh.func.sh $0

scp $scp_port_param -r "$login@$host:/$1" "$2"

