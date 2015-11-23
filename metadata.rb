name 'ele-apt'
maintainer 'Rackspace'
maintainer_email 'sfo-devops@lists.rackspace.com'
license 'Apache 2.0'
description 'Installs/Configures ele-apt'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

recipe 'ele-apt', 'Installs ele apt repo'
recipe 'repo', 'Installs Aptly package repository'
supports 'ubuntu'

depends 'apt'
depends 'aptly'
