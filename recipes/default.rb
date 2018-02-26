#
# Cookbook:: reboot
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

reboot 'restart_computer' do
  action :nothing
  reason "reboot requested by chef"
  delay_mins 1
end

file 'c:\test' do
  content'test reboot by changing this & converging'
  action :create
  notifies  :request_reboot , 'reboot[restart_computer]', :immediately
end
