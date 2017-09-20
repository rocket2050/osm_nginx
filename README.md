Role Name
=========

Role to install Nginx on Ubuntu/CentOS.

Requirements
------------
None
Role Variables
--------------



variables in vars/main.yml-> Debian.yml & RedHat.yml



Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: centos or ubuntu
      roles:
         - { role: osm_nginx }
         
How to run the Playbook
-----------------------

- For CentOS

ansible-playbook -i hosts(your host file) site.yml 

- For Ubuntu

ansible-playbook -i hosts(your host file) site.yml 

License
-------

BSD

Author Information
------------------

http://opstree.com


