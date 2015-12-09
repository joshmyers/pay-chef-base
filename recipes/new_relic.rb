new_relic_license_key = credstash['NEW_RELIC_LICENSE']

newrelic_server_monitor 'Install' do
  license new_relic_license_key
end
