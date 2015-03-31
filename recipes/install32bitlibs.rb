if platform_family?('rhel') # CentOS
  bash 'get-32-bit-libs' do
    code <<-EOH.gsub(/^\s+/, '')
	yum -y update libstdc++
	yum -y install libstdc++.i686
    EOH
  end
end

if platform_family?('debian') # Ubuntu
  bash 'get-32-bit-libs' do
    code <<-EOH.gsub(/^\s+/, '')
	apt-get -y update
	#apt-get -y install ia32-libs
	apt-get -y install libc6:i386 libgcc1:i386 gcc-4.6-base:i386 libstdc++5:i386 libstdc++6:i386
    EOH
  end
end
