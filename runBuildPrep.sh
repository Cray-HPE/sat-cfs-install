#!/usr/bin/env bash
#
# Build preparation for sat-cfs-install.
#
# (C) Copyright 2021 Hewlett Packard Enterprise Development LP.

# Set the docker image name for the config image
config_image_name=${IMAGE_NAME}
echo "config_image_name=${config_image_name}"
sed -i "s/@config_image_name@/${config_image_name}/g" kubernetes/sat-cfs-install/values.yaml

# Set the product name
sed -i s/@product_name@/sat/g kubernetes/sat-cfs-install/values.yaml

cat kubernetes/sat-cfs-install/values.yaml

# Only enable GPG checking on release branch; RPMs only get signed on release branches
disable_gpg_check=yes
branch_name=$(git rev-parse --abbrev-ref HEAD)
if [[ "$branch_name" == release/* ]]; then
    disable_gpg_check=no
fi
sed -i "s/@disable_gpg_check@/${disable_gpg_check}/" ansible/roles/sat-ncn/defaults/main.yml
