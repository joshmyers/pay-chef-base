python_runtime '2' do
  action :nothing
end.run_action(:install)

python_package 'credstash' do
  version node['pay-chef-base']['credstash_version']
  action :nothing
end.run_action(:install)

credstash.each do |credential_name, credential_value|
  magic_shell_environment "#{credential_name.upcase}" do
    value credential_value
  end
end
