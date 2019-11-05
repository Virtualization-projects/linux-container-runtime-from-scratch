# linux-container-runtime-from-scratch
Building a linux container runtime like @docker or @rkt from scratch


### What are container runtime ?
Container Runtime are the system responsible for running and managing containers.

### What are Containers ?
Containers are the tarballed images containing 
- App metadata (Instructions and details of the containerised application).
- Filesystem (Containerised App + an operating system having no kernel and no init)

## Steps to create a container image and container runtime : 

- Step 1.: Create a simple linux system in a directory as a chroot.

  - A Script named "1_rootfs_setup.sh" is provided to automate this step. Note : The script is for Fedora based systems.

- Step 2.: Configuring Namespaces 

  - The chroots of other systems :
  
    - Process Trees : 
    
        sudo unshare -p -f \
          --mount-proc=$PWD/rootfs/proc \
          chroot rootfs /bin/bash


    
    - Network interfaces : 
    
        
    
    - Mounted volumes
    
    
Further , 

  - Find the process by 
      - ps aux | grep /bin/bash
  - Export PID as PID=1234 in environment
  - Check the process Namespaces by 
      - ls /proc/$PID/ns

 - Step 3.: Entering "Namespaces" : 
    - Namespaces are composable . 
    
    Like in Kubernetes pod :
    
    - Multiple processes with different chroots are there .
    - Same network and mount namespace.
    
Further , for entering and seperating the "Process Namespace" : 
    
      nsenter \
        --pid=/proc/$PID/ns/pid \
        --mount=/proc/$PID/ns/mnt \
        chroot $PWD/rootfs /bin/bash
    
    
 
