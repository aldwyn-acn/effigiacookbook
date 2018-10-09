#
# Cookbook:: effigiacookbook
# Recipe:: setup
#
# Copyright:: 2018, The Authors, All Rights Reserved.

execute "apt-get update" do
	command "apt-get update"
end

packages = ['vim', 'curl', 'python3', 'python3-pip']
packages.each do |package|
	apt_package package do
		action :install
	end
end

execute "pip3 install" do
	command "pip3 install -r requirements.txt"
end
