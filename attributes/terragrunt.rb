default['terragrunt']['url_base'] = 'https://github.com/gruntwork-io/terragrunt/releases/tag/'
default['terragrunt']['version'] = 'v0.0.10'
default['terragrunt']['arch'] = kernel['machine'] =~ /x86_64/ ? 'amd64' : '386'
default['terragrunt']['zipfile'] = "terragrunt_" \
  "#{node['os']}_#{node['terragrunt']['arch']}"

# Windows attribute
if platform_family?('windows')
  default['terragrunt']['win_install_dir'] = 'C:\terragrunt'
  default['terragrunt']['owner'] = 'Administrator'
end
