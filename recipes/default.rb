#
# Cookbook:: reboot
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

reboot 'restart_computer' do
  action :nothing
  reason "testing test-kitchen"
  delay_mins 1
end

file 'c:\test' do
  content'test reboot by changing this & converge'
  action :create
  notifies :reboot_now, 'reboot[restart_computer]', :immediately
end
