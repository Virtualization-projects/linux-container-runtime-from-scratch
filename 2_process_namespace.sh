 nsenter \
    --pid=/proc/$PID/ns/pid \
    --mount=/proc/$PID/ns/mnt \
    chroot $PWD/rootfs /bin/bash
