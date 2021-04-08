andrewrothstein.terraform
===========================
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-terraform.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-terraform)

Installs [Terraform](https://www.terraform.io/)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

> Note: If terraform_installer is toggled between Homebrew (brew) and tar.gz (tgz) mode, please make sure the executable is re-linked if you want to leverage the Homebrew version: `brew unlink terraform && brew link terraform`

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.terraform
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
