#
# Cookbook Name:: memcached
# Recipe:: default
# encoding: utf-8
#

template '/etc/php5/mods-available/memcache.ini' do
  source 'memcached.ini.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

service "apache2" do
  action :restart
end
