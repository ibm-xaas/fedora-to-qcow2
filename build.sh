#!/usr/bin/env sh
./create_locald.sh
cd packer
rm -rf output
PACKER_LOG=1 packer init fedora.pkr.hcl
PACKER_LOG=1 packer build fedora.pkr.hcl
