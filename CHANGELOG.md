# Changelog

(C) Copyright 2021-2022 Hewlett Packard Enterprise Development LP.

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.2.3] - 2022-06-07

### Changed
- Changed build to publish to sat-docker and sat-helm-charts Artifactory
  repositories.

## [1.2.2] - 2022-06-07

### Fixed
- Fixed an issue with the helm chart packaging that resulted in sat-cfs-install
  not deploying correctly.

## [1.2.1] - 2022-05-24

### Changed
- Made changes related to open sourcing of sat-cfs-install.
    - Update Jenkinsfile to use csm-shared-library.
    - Add Makefile for building container image and helm chart.
    - Pull base helm chart from external location.

## [1.2.0] - 2022-04-01

### Changed
- Updated ``sat-ncn`` Ansible role to enable GPG checks on packages while
  leaving GPG checks disabled on repository metadata. GPG checks on packages
  are only enabled on release-branch builds of this repository.

## [1.1.0] - 2022-03-25

### Changed
- Updated base cf-gitea-import container image version from 1.3.39 to 1.4.69.

## [1.0.5] - 2022-03-16

### Changed
- Removed SLE repos from sat-ncn Ansible role since the only dependencies we
  would need from those repositories are already installed on the NCNs.

## [1.0.4] - 2021-12-13

### Changed
- Bumped minor version to validate SAT after migration to internal HPE GitHub
  instance.

## [1.0.3] - 2021-09-01

### Changed
- Hardcode version of ``cf-gitea-import``.

### Security
- Updated version of ``cf-gitea-import`` to 1.3.39
  to address OpenSSL CVE-2021-3711.
- Change docker image to run as the nobody user with UID/GID = 65534.

## [1.0.2] - 2021-04-29

### Removed
- Remove ``/product_version`` from the Docker image, and remove
  ``CF_IMPORT_PRODUCT_VERSION`` from the Helm chart, as this should
  be specified in the Loftsman manifest.
- Remove default config image tag from Helm chart values.

## [1.0.1] - 2021-04-28

### Changed
- Updated the base ``cray-import-config`` Helm chart version from ~0.1.4
  to ~0.2.7.

## [1.0.0] - 2021-04-16

### Added
- Added Helm chart and Docker image to import Ansible playbook and role to
  VCS, which will install cray-sat-podman on the management NCNs.
