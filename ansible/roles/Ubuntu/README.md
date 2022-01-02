Ubuntu
=========

This is simple setup for Ubuntu.

Requirements
------------

N/A

Role Variables
--------------

The variables are defined in defaults/main.yml:
{{ install_pkgs }} - a list of packages to be installed
{{ remove_pkgs }} - a list of packages to be removed

Dependencies
------------

N/A

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: Ubuntu }

License
-------

CC-BY-4.0

Author Information
------------------

Ser Heang TAN <serheang@gmail.com>
