#!/bin/sh

cd $PATH_OF_YOUR_CUJU/kvm
lsmod | grep kvm
sudo rmmod kvm_intel
sudo rmmod kvm
sudo insmod ./x86/kvm.ko
sudo insmod ./x86/kvm-intel.ko
lsmod | grep kvm
