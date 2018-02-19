name 'ele-apt'
maintainer 'Rackspace'
maintainer_email 'sfo-devops@lists.rackspace.com'
license 'Apache-2.0'
description 'Installs/Configures ele-apt'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.2.2'

recipe 'ele-apt', 'Installs ele apt repo'
recipe 'repo', 'Installs Aptly package repository'
supports 'ubuntu'

depends 'apt'
depends 'aptly'

issues_url 'https://github.com/mmi-cookbooks/ele-apt/issues'
source_url 'https://github.com/mmi-cookbooks/ele-apt'
chef_version '>= 12' if respond_to?(:chef_version)
