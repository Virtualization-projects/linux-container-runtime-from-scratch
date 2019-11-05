# linux-container-runtime-from-scratch
Building a linux container runtime like @docker or @rkt from scratch


### What are container runtime ?
Container Runtime are the system responsible for running and managing containers.

### What are Containers ?
Containers are the tarballed images containing 
- App metadata (Instructions and details of the containerised application).
- Filesystem (Containerised App + an operating system having no kernel and no init)

## Steps to create a container image and container runtime : 

- Step 1. : Create a simple linux system in a directory as a chroot.
