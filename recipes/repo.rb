#
# Cookbook Name:: ele-apt
# Recipe:: repo
#
# Copyright 2015, Rackspace
#
# All rights reserved - Do Not Redistribute
#

node.set['aptly']['uri'] = 'http://intapt.cm.k1k.me/'
node.set['aptly']['dist'] = 'trusty'

include_recipe 'aptly'

directory '/data/aptly' do
  recursive true
end

apt_repo 'aptly' do
  action :add
  directory '/data/aptly'
end
