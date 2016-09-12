# Encoding: utf-8
#
# Cookbook Name:: terragrunt
# Recipe:: default
#
# Copyright 2014, Ross Timson
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#node.default['terragrunt']['checksums'] = raw_checksums_to_hash
#node.default['terragrunt']['checksum'] =
#  node['terragrunt']['checksums'][node['terragrunt']['zipfile']]

#include_recipe 'ark'

#ark 'terragrunt' do
#  url terragrunt_url
#  version node['terragrunt']['version']
#  checksum node['terragrunt']['checksum']
#  has_binaries ['terragrunt']
#  append_env_path false
#  strip_components 0

#  if platform_family?('windows')
#    win_install_dir node['terragrunt']['win_install_dir']
#    owner node['terragrunt']['owner']
#  end

#  action :install
#end

# update path
#if platform_family?('windows')
#  windows_path node['terragrunt']['win_install_dir'] do
#    action :add
#  end
#end

remote_file '/usr/local/terragrunt' do
  source 'https://github.com/gruntwork-io/terragrunt/releases/download/v0.0.10/terragrunt_linux_amd64'
  owner node['terragrunt']['owner']
  action :create
  mode '0755'
end
