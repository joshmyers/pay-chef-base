name             'pay-chef-base'
maintainer       'joshmyers'
maintainer_email 'josh.myers@digital.cabinet-office.gov.uk'
license          'All rights reserved'
description      'Installs/Configures pay-chef-base'
long_description 'Installs/Configures pay-chef-base'
version          '0.1.0'

supports 'ubuntu', '>= 12.04'

dep_cookbooks = %w[
  apt
  apt-docker
  build-essential
  magic_shell
  newrelic
  ntp
  poise-python
  sudo
  users
]

dep_cookbooks.each do |dep|
  depends dep
end
