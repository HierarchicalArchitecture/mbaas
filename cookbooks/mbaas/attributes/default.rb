default['mbaas']['development']['redis_host'] = "localhost"
default['mbaas']['staging']['redis_host'] = "localhost"
default['mbaas']['production']['redis_host'] = "localhost"

default['mbaas']['redis_host'] = "localhost"

case node.chef_environment
when "mbaas_development"
    default['mbaas']['redis_host'] = "#{node['mbaas']['development']['redis_host']}"
when "mbaas_staging"
    default['mbaas']['redis_host'] = "#{node['mbaas']['staging']['redis_host']}"
when "mbaas_production"
    default['mbaas']['redis_host'] = "#{node['mbaas']['production']['redis_host']}"
end