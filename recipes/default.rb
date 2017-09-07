#
# Cookbook:: haproxy
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'haproxy'

template '/etc/haproxy/haproxy.cfg' do
  source 'haproxy.cfg.erb'
end

service 'haproxy' do
  actions [ :start, :enable ]
end

