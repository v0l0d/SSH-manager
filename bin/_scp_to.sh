#!/bin/bash 

script_dir=`dirname $0`

. $script_dir/_ssh.func.sh $0

scp $scp_port_param $keyfile_param -r "$1" "$login@$host:/$2"

