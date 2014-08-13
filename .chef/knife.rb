log_level                :info
log_location             STDOUT
node_name                'jarek-jb'
client_key               '/home/jarek/WASdev/.chef/jarek-jb.pem'
validation_client_name   'chef-validator'
validation_key           '/home/jarek/WASdev/.chef/chef-validator.pem'
chef_server_url          'https://sde-xcat-pre.pok.ibm.com:443'
syntax_check_cache_path  '/home/jarek/WASdev/.chef/syntax_check_cache'
cookbook_path [ './cookbooks' ]

