#
# Cookbook Name:: terraform-wrapper
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'terraform'
include_recipe 'terraform-wrapper::terragrunt'
