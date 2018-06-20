#!/bin/bash
  
# This is the folder that bochs will install to. Feel free to change this to
# anything you like. By default, we install bochs to a 'my_build" folder in the
# current directory.
rm -rf my_build
mkdir my_build
install_path=$(realpath ./my_build)
  
# Create the installation folder if it doesn't exist.
mkdir -p "$install_path"
  
# Run Boch's configure script with the features that we need.
./configure  \
	--enable-smp \
	--enable-x86-64 \
	--enable-all-optimizations \
	--enable-long-phy-address \
	--enable-configurable-msrs \
	--enable-disasm \
	--enable-fpu \
	--enable-alignment-check \
	--enable-3dnow \
	--enable-svm \
	--enable-vmx=2 \
	--enable-avx \
	--enable-a20-pin \
	--enable-pci \
	--enable-clgd54xx \
	--enable-voodoo \
	--enable-usb \
	--enable-usb-ohci \
	--enable-usb-xhci \
	--enable-cdrom \
	--enable-sb16 \
	--enable-es1370 \
	--enable-show-ips \
	--with-all-libs   \
	--prefix="$install_path"
