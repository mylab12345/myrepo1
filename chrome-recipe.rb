#
# Cookbook:: chrome-cookbook
# Recipe:: chrome-recipe
#
# Copyright:: 2024, The Authors, All Rights Reserved.

yum_repository 'google-chrome' do
	  description 'Google Chrome'
	    baseurl 'http://dl.google.com/linux/chrome/rpm/stable/x86_64'
	      gpgkey 'https://dl.google.com/linux/linux_signing_key.pub'
	        action :create
end

dnf_package 'google-chrome-stable' do
action :install
end
