user = "#{node['commander']['ftp-user']}"
password = "#{node['commander']['ftp-password']}"
host = "#{node['commander']['ftp-host']}"
path = "#{node['commander']['installer-path']}"
file = "#{node['commander']['installer-file']}"

remote_file "/tmp/#{file}" do
	source "ftp://#{user}:#{password}@#{host}/#{path}/#{file}"
	mode 0744 
end

