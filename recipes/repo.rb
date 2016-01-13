#
# Cookbook Name:: ele-apt
# Recipe:: repo
#
# Copyright 2015, Rackspace
#
# All rights reserved - Do Not Redistribute
#

# node.set['aptly']['ppadistributorid'] = "Ubuntu"
# node.set['aptly']['uri'] = 'http://intapt.cm.k1k.me/'
node.set['aptly']['dist'] = 'trusty'

include_recipe 'aptly::install'

packagedir = '/data/packages'

directory packagedir do
  recursive true
  owner node['aptly']['user']
  group node['aptly']['group']
end

aptly_repo 'aptly' do
  action :add
  comment 'Custom packages for MAAS'
  directory packagedir
  component node['aptly']['components'].first
  distribution node['aptly']['dist']
end

# apache virtualhost
