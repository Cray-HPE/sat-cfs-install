# Dockerfile for importing sat content into gitea instances on Shasta.
# (C) Copyright 2021-2022 Hewlett Packard Enterprise Development LP.

# Use the cf-gitea-import as a base image
FROM artifactory.algol60.net/csm-docker/stable/cf-gitea-import:1.4.69
USER nobody:nobody

WORKDIR /
ENV CF_IMPORT_PRODUCT_NAME=sat

# Copy in sat Ansible content
COPY --chown=nobody:nobody ansible/ /content/
