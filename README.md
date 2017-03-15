# SSH-manager

## Usage

### Setup
To setup host run:
```
bin/_ssh_setup.sh host_alias
```

you'll get a set of SH files in the same folder:
* env.host_alias.sh
* ssh.host_alias.sh
* scp_to.host_alias.sh
* scp_from.host_alias.sh

open env.host_alias.sh and update 'host' variable with your host IP or domain

With these scripts you can easily SSH, SCP to or SCP from alias host

### Example
SSH to host_alias:
```
ssh.host_alias.sh
```

SCP from host_alias dir '/tmp/sample_dir' to the current local dir:
```
scp_from.host_alias.sh -r /tmp/sample_dir .
```

SCP to host-alias file some_file.txt to remote /tmp/ dir:
```
scp_to.host_alias.sh some_file.txt /tmp/
```

### Other commands
P.S.
Also it has script to access remote MySQL DB easily, though I need to test and finish it
