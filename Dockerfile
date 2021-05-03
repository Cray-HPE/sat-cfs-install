# Dockerfile for importing sat content into gitea instances on Shasta.
# (C) Copyright 2021 Hewlett Packard Enterprise Development LP.

# Use the cf-gitea-import as a base image
FROM arti.dev.cray.com/csm-docker-stable-local/cf-gitea-import:@cf_gitea_import_image_tag@

WORKDIR /
ENV CF_IMPORT_PRODUCT_NAME=sat

# Copy in sat Ansible content
COPY ansible/ /content/
