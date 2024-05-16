#
# Cookbook:: chrome-cookbook
# Recipe:: firefox-recipe
#
# Copyright:: 2024, The Authors, All Rights Reserved.

execute 'enable_optional_repo' do
  command 'subscription-manager repos --enable=rhel-7-server-optional-rpms'
  action :run
  only_if { platform_family?('rhel') && node['platform_version'].to_i == 7 }
end

# Install Firefox package
package 'firefox' do
  action :install
end

