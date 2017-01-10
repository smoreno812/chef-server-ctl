# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://github.com/opscode/chef-dk/blob/master/POLICYFILE_README.md

# A name that describes what the system you're building with Chef does.
name "csg_chef_server_ctl"

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list "csg_chef_server_ctl::example"

# Specify a custom source for a single cookbook:
cookbook "csg_chef_server_ctl", path: "."

default['chef-server']['api_fqdn'] = 'chef.example.com'
default['chef-server']['addons'] = [
  "manage",
  "reporting",
  "push-server"
]
