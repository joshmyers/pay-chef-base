include_recipe 'apt-docker'

package 'docker-engine' do
  version node['pay-chef-base']['docker_version']
end

template '/etc/default/docker' do
  source 'etc_default_docker.erb'
  owner 'root'
  group 'root'
  mode  '0644'
end

template '/lib/systemd/system/docker.service' do
  source 'systemd_docker_service.erb'
  owner 'root'
  group 'root'
  mode  '0644'
end

python_package 'docker-py' do
  version '0.4.0'
end
