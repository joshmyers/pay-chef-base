base_packages = %w[
  apt-transport-https
  git-core
  htop
  iotop
  libsqlite3-dev
  libxml2-dev
  screen
  sqlite3
  strace
  sysstat
  tcpdump
  wget
  xvfb
  zip
  unzip
]

base_packages.each do |package_name|
  package package_name
end
