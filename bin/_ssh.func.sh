#!/bin/bash

if [ "x$1" = "x" ];
then
    echo "usage: . $0 \$0"
    exit
fi

script_file=`basename $1`
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"  #~/bin #`dirname $0`
# echo $script_dir

# extract env file name from script file name
# example: ssh.something.here.sh will be transformed into env.something.here.sh
env_file=`echo "$script_file" | perl -pi -e "s/.+?\.(.+?)\$/env.\\$1/"`

. $script_dir/$env_file

keyfile_param=""
if [ "x$keyfile" != "x" ];
then
    keyfile_param="-i $keyfile"
fi

ssh_port_param=""
scp_port_param=""
if [ "x$port" != "x" ];
then
    ssh_port_param="-p $port"
    scp_port_param="-P $port"
fi
