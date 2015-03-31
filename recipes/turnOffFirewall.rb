# Ubuntu shouldn't be a problem, but if it is use
# sudo ufw disable
if platform_family?('rhel') # CentOS
	bash 'turn-off-firewall' do
	  code <<-EOH.gsub(/^\s+/, '')
		service iptables save
		service iptables stop
		chkconfig iptables off
	  EOH
	end
end
