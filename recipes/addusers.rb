user = "#{node['commander']['installer-user-name']}"
password = "#{node['commander']['installer-user-password']}"

bash 'add-user' do
  code <<-EOH.gsub(/^\s+/, '')
	if id -u #{user} >/dev/null 2>&1; then
		log "User #{user} already exists." do
			level :info
		end
		echo
	else
		log "Adding user #{user}." do
			level :info
		end
		password="#{password}"
		pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
		useradd -m -p $pass #{user}
	fi
  EOH
end
