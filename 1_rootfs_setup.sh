mkdir rootfs

sudo dnf -y \
  --installroot=$PWD/rootfs \
  --releasever=24 install \
  @development-tools \
  procpsng \
  python3 \
  which \
  iproute \
  net-tools

ls rootfs
