# rhel7_systemd_openssh

rhel7_init ubi image with systemd and openssh-server (also includes openssh-clients)

1. To build image:
> cd path/to/repo
> $ docker build -t image_name .

2. To run image use:
> $ docker container run -d -p 911:22 --tmpfs /run --tmpfs /tmp -v /sys/fs/cgroup:/sys/fs/cgroup image_name

To get into the shell of continer use:
> $ docker exec container_name /bin/bash

To set root password for ssh login use inside container:
> $ echo 'newpassword' |passwd root --stdin #to set paswd after login for ssh
Or you can copy your ssh public key in ~/.ssh/authorized_keys file to do password login.


Steps in steps file to launch container with unprivileged disabled oci-systemd-hooks and set paswd in container to ssh.
