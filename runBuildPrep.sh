#!/usr/bin/env sh
#
# Build preparation for sat-cfs-install.
#
# (C) Copyright 2021 Hewlett Packard Enterprise Development LP.

# Set the docker image name for the config image
config_image_name=${IMAGE_NAME}
echo "config_image_name=${config_image_name}"
sed -i s/@config_image_name@/${config_image_name}/g kubernetes/sat-cfs-install/values.yaml

# Set the product name
sed -i s/@product_name@/sat/g kubernetes/sat-cfs-install/values.yaml

# Set the cf-gitea-import image version, which is the base image for the sat-cfs-install Docker image.
wget https://arti.dev.cray.com/artifactory/csm-misc-stable-local/manifest/cf-gitea-import-manifest.txt
cf_gitea_import_image_tag=$(grep cf-gitea-import cf-gitea-import-manifest.txt | sed s/.*://g | tr -d '[:space:]')
sed -i s/@cf_gitea_import_image_tag@/${cf_gitea_import_image_tag}/g Dockerfile
rm cf-gitea-import-manifest.txt

cat kubernetes/sat-cfs-install/values.yaml
