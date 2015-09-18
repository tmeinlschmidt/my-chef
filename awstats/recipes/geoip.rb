# installs GeoIP
%w{libgeoip1 libgeoip-dev libgeo-ip-perl}.each do |pkg|
  package pkg do
	action :install
  end
end

# fetch and install geoIP files
%w{GeoIP GeoLiteCity}.each do |data|
  remote_file "#{node[:awstats][:geoIP][:installdir]}/#{data}.dat.gz" do
    source node[:awstats][:geoIP][data]
	mode 0644
  end
  execute "unpack-geoip" do
    cwd node[:awstats][:geoIP][:installdir]
    command "gzip -df #{data}.dat.gz"
    action :run
  end
end
