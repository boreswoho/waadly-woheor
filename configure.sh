sudo apt-get install git qemu-system qemu-utils python3 python3-pip  # for Ubuntu, Debian, Mint, and PopOS.

git clone https://github.com/foxlet/macOS-Simple-KVM
cd macOS-Simple-KVM

./jumpstart.sh --mojave
qemu-img create -f qcow2 MyDisk.qcow2 64G
HEADLESS=1 MEM=1G CPUS=2 SYSTEM_DISK=MyDisk.qcow2 ./headless.sh
