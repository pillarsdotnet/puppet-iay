# Infrastructure As Yaml

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with iay](#setup)
    * [Setup requirements](#setup-requirements)
    * [Beginning with iay](#beginning-with-iay)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Limitations - OS compatibility, etc.](#limitations)
5. [Development - Guide for contributing to the module](#development)

## Description

This module may be used to build and maintain infrastructure via Terraform.

## Setup

### Setup Requirements **OPTIONAL**

As noted in [`metadata.json`](https://github.com/pillarsdotnet/puppet-iay/blob/master/metadata.json), the following are required:

* Puppet [Enterprise](https://puppet.com/download-puppet-enterprise)
  or [Open-source](https://puppet.com/download-open-source-puppet) (4.10 or later)
* [Hashicorp](https://github.com/inkblot/hashicorp) (1.4.0 or later)

### Beginning with iay

Include the `iay` class on a single node, either via the per-node hiera data:

```
classes:
  - 'iay'
```

... or in the node manifest:

```
include ::iay
```

## Usage

TBD

## Reference

See [`REFERENCE.md`](https://github.com/pillarsdotnet/ansible-iay/blog/master/REFERENCE.md).

## Limitations

Not all Terraform provisioners have been coded yet.

## Development

Submit bug-reports, issues, and pull-requests to
https://github.com/pillarsdotnet/puppet-iay

## Changelog

See [`CHANGELOG.md`](https://github.com/pillarsdotnet/puppet-iay/blog/master/CHANGELOG.md).
