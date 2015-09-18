=begin 
awstats new resource
 usage:

web_awstats "site.tld" do
  geoip true   # true if want to use geoip
  config[:plugins] << "hostdata"
  config[:site_domain] "site.tld"
  #see other configuration in attributes/awstats.rb
end

=end
define :web_awstats do
  
  application_name = params[:name]

  include_recipe "apache2"
  include_recipe "awstats"

  # set defaults
  config = Mash.new
  node[:awstats][:config].each do |k,v| 
    config[k] = (params[:config] && params[:config][k]) ? params[:config][k] : v
  end
  # repair current variables
  config[:log_file] = "#{@node[:apache][:log_dir]}/#{@params[:name]}-access.log" if config[:log_file] == ""
  
  if params[:geoip] == true
    include_recipe "awstats::geoip"
	config[:plugins] << "geoip GEOIP_STANDARD #{node[:awstats][:geoIP][:installdir]}/GeoIP.dat"
	config[:plugins] << "geoip_city_maxmind GEOIP_STANDARD #{node[:awstats][:geoIP][:installdir]}/GeoLiteCity.dat"
  end
  
  Chef::Log::info("running awstats");

  # create awstats config directory & config file
  template "#{node[:awstats][:config_directory]}/awstats.#{params[:name]}.conf" do
    cookbook "awstats"
    source "awstats_template.erb"
	mode 0644
	owner "root"
	group "root"
	variables({
	  :params => params,
	  :config => config
	}
	)
  end

  template "#{node[:apache][:dir]}/conf.d/awstats.conf" do
    cookbook "awstats"
	source "awstats.conf.erb"
	mode 0644
	owner "root"
	group "root"
  end

  # create cron job to run awstats periodically
  template "/etc/cron.daily/awstats.#{params[:name]}" do
    cookbook "awstats"
	source "awstats.cron.erb"
	mode 0755
	owner "root"
	group "root"
	variables({
	  :name => params[:name]
	})
  end
end
