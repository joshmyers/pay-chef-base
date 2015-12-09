#
# Cookbook Name:: pay-chef-base
# Recipe:: default
#
# Copyright (C) 2015 pay-chef-base
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'
include_recipe 'build-essential'
include_recipe 'ntp'
include_recipe 'sudo'
include_recipe 'users::sysadmins'

include_recipe 'pay-chef-base::credstash'
include_recipe 'pay-chef-base::docker'
include_recipe 'pay-chef-base::new_relic'
include_recipe 'pay-chef-base::packages'
