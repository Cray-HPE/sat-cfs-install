# Deprecation Notice

As of SAT Product Stream 2.4, this repository is no longer used.
The ansible content for SAT installation can now be found in `sat-product-stream`.

# Introduction

`sat-cfs-install` contains the Helm chart for importing SAT configuration
to VCS, which can be run via CFS to configure SAT on management NCNs.

# Repository Layout

| Path                          | Description                                   |
| ----------------------------- | --------------------------------------------- |
| `ansible/`                    | Ansible playbook and role for configuring SAT |
| `kubernetes/sat-cfs-install/` | `sat-cfs-install` helm chart                  |
| `.version`                    | Version of `sat-cfs-install` helm chart       |
| `sat_product_version`         | Version of corresponding SAT release          |

# Copying

(C) Copyright 2021 Hewlett Packard Enterprise Development LP.

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
