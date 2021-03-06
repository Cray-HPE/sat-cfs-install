#!/usr/bin/env bash
#
# MIT License
#
# (C) Copyright 2022 Hewlett Packard Enterprise Development LP
#
# Permission is hereby granted, free of charge, to any person obtaining a
# copy of this software and associated documentation files (the "Software"),
# to deal in the Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish, distribute, sublicense,
# and/or sell copies of the Software, and to permit persons to whom the
# Software is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included
# in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
# THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
# OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
# ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
# OTHER DEALINGS IN THE SOFTWARE.
#
#
# Build preparation for sat-cfs-install.
#

# Set the docker image name for the config image
config_image_name="${NAME}"
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
