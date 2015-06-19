# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                'kigster'
client_key               "#{current_dir}/kigster.pem"
validation_client_name   'mypants-validator'
validation_key           "#{current_dir}/mypants-validator.pem"
chef_server_url          'https://api.opscode.com/organizations/mypants'

require 'librarian/chef/integration/knife'
cookbook_path "#{current_dir}/../site-cookbooks", Librarian::Chef.install_path

