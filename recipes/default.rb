#
# Cookbook Name:: apache2
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'apt'

package 'apache2'

service 'apache2' do
  action [:enable, :start]
end

template '/var/www/index.html' do
  source 'index.html.erb'
end
