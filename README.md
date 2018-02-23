# osm_nginx

# Role Name : osm_nginx

This Ansible role will install Nginx webserver to a server define in your Ansible 'hosts' file.
This role is made multiversion that currently supports Centos(6,7) and ubuntu(14,16) and can be made available to any other not so widely used Linux flavour.
The osm_nginx is tested with test kitchen taking 'docker engine' as driver and verifier as 'serverspec'.

Kitchen is an opensource automation code testing tool by Chef. Kitchen uses a yaml file named .kitchen.yml to get information about the test.
ServerSpec is a verifier that verifies the state of the server according to the ANYNAME_spec.rb test case file.

Both .kitchen.yaml and nginx_spec.rb file is included in the role itself.

# Requirements

The machine using the osm_nginx role should have ansible installed with the IP of the provisioned server in the hosts file of ansible.
the machine testing the role via test-kitchen should have the following packages installed.
* Git
* Docker
* Ruby
* Ruby Gems
* Bundler

How to use and install these is out of scope for today, but here’s what I have before we start:
$ git --version
    git version 2.5.4 (Apple Git-61)
    $ docker -v
    Docker version 1.11.1, build 5604cbe
    $ ruby -v
    ruby 2.0.0p481 (2014-05-08 revision 45883) [universal.x86_64-darwin14]
    $ gem -v
    2.0.14
    $ bundler -v
    Bundler version 1.10.5
    Gemfile

To begin we need to creeeate a Gemfile to specify our Ruby dependencies for Bundler
	source 'https://rubygems.org'
  gem 'docker'
  gem 'test-kitchen'
  gem 'kitchen-docker'
  gem 'kitchen-ansible'
  gem 'kitchen-verifier-serverspec'

To install all of these we use bundle install
$ bundle install
    Fetching gem metadata from https://rubygems.org/..........
    Fetching version metadata from https://rubygems.org/...
    Fetching dependency metadata from https://rubygems.org/..
    Resolving dependencies...
    Using artifactory 2.3.2
    Using backticks 0.4.0
    Using docker 0.3.1
    Using multipart-post 2.0.0
    Using faraday 0.9.2
    Using highline 1.7.8
    Using thor 0.19.1
    Using librarian 0.1.2
    Using librarian-ansible 3.0.0
    Using net-ssh 3.1.1
    Using mixlib-shellout 2.2.6
    Using mixlib-versioning 1.1.0
    Using mixlib-install 1.0.11
    Using net-scp 1.2.1
    Using safe_yaml 1.0.4
    Using test-kitchen 1.8.0
    Using kitchen-ansible 0.42.5
    Using kitchen-docker 2.4.0
    Using kitchen-verifier-serverspec 0.4.3
    Using bundler 1.10.5
    Bundle complete! 5 Gemfile dependencies, 20 gems now installed.
    Use `bundle show [gemname]` to see where a bundled gem is installed.
A note about kitchen init

Test Kitchen comes with an init action that automates a few of the steps below. If you’d like to try it you’d see output like this:
	
$ kitchen init --driver=docker --provisioner=ansible_playbook --create-gemfile
      create  .kitchen.yml
      create  chefignore
      create  test/integration/default
      create  .gitignore
      append  .gitignore
      append  .gitignore
      create  Gemfile
      append  Gemfile
      append  Gemfile
You must run `bundle install' to fetch any new gems.

# Role Variables

Available variables are [variables](https://github.com/opstree-ansible/osm_nginx/blob/master/defaults/main.yml)


# Dependencies

None.

# Example Playbook

Including an example of how to use role.

```

- hosts: "{{ host }}"
  roles:
     - { role: osm_nginx }
 ```
 
# License

BSD

Opstree Solutions Pvt. Ltd.
