#!/bin/bash 

script_dir=`dirname $0`

. $script_dir/_ssh.func.sh $0

ssh $ssh_port_param $keyfile_param $login@$host
