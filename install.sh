#!/bin/bash
mkdir -p /usr/lib/firmware/facetimehd
cp firmware.bin /usr/lib/firmware/facetimehd
cp 1871_01XX.dat /usr/lib/firmware/facetimehd
chmod 644 /usr/lib/firmware/facetimehd/firmware.bin
mkdir -p /usr/src/facetimehd-0.1
cd /usr/src/facetimehd-0.1
git clone https://github.com/patjak/facetimehd .
dnf install kernel-devel dkms -y
dkms add facetimehd/0.1
dkms build facetimehd/0.1
dkms install facetimehd/0.1