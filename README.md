andrewrothstein.terraform
===========================
[![CircleCI](https://circleci.com/gh/andrewrothstein/ansible-terraform.svg?style=svg)](https://circleci.com/gh/andrewrothstein/ansible-terraform)

Installs [Terraform](https://www.terraform.io/)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

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
