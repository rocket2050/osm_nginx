# osm_nginx

# Nginx webserver role

This Ansible role will install Nginx webserver to a server define in your Ansible 'hosts' file.
The osm_nginx is tested with test kitchen taking 'docker engine' as driver and verifier as 'serverspec'.

```.kitchen.yaml and nginx_spec.rb file is included.```
# Operating Systems

This role is tested on centos(6,7) and ubuntu(14,16)

# Requirements & Dependencies
 
The machine using the osm_nginx role should have ansible installed with the IP of the provisioned server in the hosts file of ansible.
the machine testing the role via test-kitchen should have the following packages installed.

```
   * Git
   * Docker
   * Ruby
   * Ruby Gems
   * Bundler

```
create a Gemfile to specify our Ruby dependencies for Bundler.

```	
  gem 'docker'
  gem 'test-kitchen'
  gem 'kitchen-docker'
  gem 'kitchen-ansible'
  gem 'kitchen-verifier-serverspec'

```
To install all of these we use bundle install

```
$ bundle install
```

# Example Playbook

Including an example of how to use role.

```

- hosts: "{{ host }}"
  roles:
     - { role: osm_nginx }
 ```

Test can be executed by the command 
``` sudo kitchen test ``` at the root directory.

# Files

```
".kitchen.yml" is present in the root directory.
"test/integration/default/serverspec/nginx_spec.rb" is the serverspec test case.
```
# License

BSD

Opstree Solutions Pvt. Ltd.
.
