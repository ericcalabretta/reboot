Reboot sample cookbook

This cookbook is used as an example of rebooting a windows 2016 machine.

The .kitchen.yml is configured for Vagrant with the necessary settings to test reboots.

To use this cookbook change the content of the file resource and the next chef-client run will cause a reboot. Changing the content of a file does not require a reboot on a real system it's just a simple example of a change.

The chef-client run that triggers the reboot will have the following log sent to Automate.

`Rebooting server at a recipe's request. Details: {:delay_mins=>1, :reason=>"reboot requested by chef", :timestamp=>2018-02-26 00:21:07 +0000, :requested_by=>"restart_computer"}`

The next chef-client run will show successful after the reboot resource has been processed. You can kick the next run off manually, use the chef-client cookbook with a schedule, or have your cookbook schedule chef-client as a task immediately after the reboot.  


For more information please see the reboot resource documentation or the following linked blog post on windows reboot scenarios.

https://docs.chef.io/resource_reboot.html

https://blog.chef.io/2015/03/13/single-chef-client-run-with-multiple-reboots-on-windows/
