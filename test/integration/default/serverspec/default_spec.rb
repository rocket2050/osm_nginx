require 'serverspec'
require 'spec_helper'

set :backend, :ssh


describe package('nginx'), :if => os[:family] == 'ubuntu' do
	it { should be_installed }
end

describe package('nginx'), :if => os[:family] == 'redhat' do
	it { should be_installed }
end

describe service('nginx'), :if => os[:family] == 'ubuntu' do
	it { should be_enable }
	it { should be_running }
end

describe service('nginx'), :if => os[:family] == 'redhat' do
	it { should be_enable }
	it { should be_running }
end

describe port(80) do
	it  { should be_listening }
end
