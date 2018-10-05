#
# Cookbook:: effigiacookbook
# Recipe:: setup
#
# Copyright:: 2018, The Authors, All Rights Reserved.

execute "yum update" do
	command "yum update"
end

packages = ['vim', 'curl', 'python3', 'python3-pip']
packages.each do |package|
	apt_package package do
		action :install
	end
end
