#
# Cookbook Name:: ele-apt
# Recipe:: default
#
# Copyright 2011, Cloudkick
# Copyright 2015, Rackspace
#
# All rights reserved - Do Not Redistribute
#

apt_repository 'intapt' do
  uri 'http://intapt.k1k.me/'
  distribution node['lsb']['codename']
  components ['main']
  key 'intapt.key'
  action :add
end

apt_repository 'aptly' do
  uri 'http://apt.cm.k1k.me/'
  distribution node['lsb']['codename']
  components ['main']
  key 'aptly.key'
  action :add
end
