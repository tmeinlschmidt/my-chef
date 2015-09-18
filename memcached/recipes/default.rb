package "memcached" do
  action :upgrade
end

package "libmemcache-dev" do
  action :upgrade
end

service "memcached" do
  action :enable
  supports :restart => true, :reload => true
end

template node[:memcached][:conf_path] do
  source "memcached.conf.erb"
  owner "root"
  group "root"
  mode "0644"
  variables(
  	:user => node[:memcached][:user],
	:port => node[:memcached][:port],
	:max_memory => node[:memcached][:max_memory],
	:max_connections => node[:memcached][:max_connections],
	:log_path => node[:memcached][:log_path]
  )
  # if file changes, restart service
  notifies :restart, resources(:service => "memcached"), :immediately
end

service "memcached" do
  action :start
end
