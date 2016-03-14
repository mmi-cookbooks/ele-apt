# encoding: UTF-8
# License:: Apache License, Version 2.0
#

require_relative 'spec_helper'

describe file('/data/packages') do
  it { should be_directory }
end

# https://github.com/hw-cookbooks/aptly/blob/develop/recipes/install.rb

describe package('aptly') do
  it { should be_installed }
end

describe package('graphviz') do
  it { should be_installed }
end

describe user('aptly') do
  it { should exist }
end

describe user('aptly') do
  it { should belong_to_group 'aptly' }
end

describe file('/etc/aptly.conf') do
  it { should be_file }
end
