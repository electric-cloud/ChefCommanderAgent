file = "#{node['commander']['installer-file']}"
user = "#{node['commander']['installer-user-name']}"

bash 'install-commander-agent' do
  code <<-EOH.gsub(/^\s+/, '')
   su - ec -c "sudo /tmp/#{file} --mode silent --installAgent --unixAgentUser #{user} --unixAgentGroup #{user}"
  EOH
end
