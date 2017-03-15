#!/bin/bash 

script_dir=`dirname $0`

. $script_dir/_ssh.func.sh $0

 mysql -A -h $host -u $mysql_user -p$mysql_passwd $mysql_db "$@"

