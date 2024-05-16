#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2024, The Authors, All Rights Reserved.

package 'httpd' do
	action :install
end

file '/var/www/html/index.html' do
	content 'Welcome to CHef Tool'
	action :create
end


service 'httpd' do
	action [:enable, :start]
end

