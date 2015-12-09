require 'json'
require 'open-uri'

module Credstash
  module Helper
    include Chef::Mixin::ShellOut

    def instance_region
      availability_zone = open('http://169.254.169.254/latest/meta-data/placement/availability-zone/', options = { proxy: false }, &:gets)
      fail 'Cannot find availability zone!' unless availability_zone
      Chef::Log.debug("Instance's availability zone is #{availability_zone}")
      availability_zone[0, availability_zone.length - 1]
    end

    def credstash(action = 'getall')
      cmd = shell_out!("/usr/local/bin/credstash -t #{node.environment} -r #{instance_region} getall")
      JSON.parse(cmd.stdout)
    end
  end
end

Chef::Recipe.send(:include, Credstash::Helper)
