# install/upgrade package
package "postfix" do
	action :upgrade
end

service "postfix" do
	action [:enable]
	supports :restart => true, :reload => true
end

# postfix configuration file (including SASL)
template "/etc/postfix/main.cf" do
	source "main.cf.erb"
	notifies :restart, resources(:service=>"postfix")
end

# create transport table
# run only when transport table changed (on notify)
execute "update-transport-map" do
	command "/usr/sbin/postmap transport"
	cwd "/etc/postfix"
	action :nothing
end

template "/etc/postfix/transport" do
	source "transport.erb"
	mode 0600
	owner "root"
	group "root"
	notifies :run, resources(:execute => "update-transport-map")
	notifies :reload, resources(:service=>"postfix")
end

# modify config to use SMTP AUTH to relay (upstream)
# create SMTP AUTH (sasl) files

# do postmap sasl_passwd
# update when sasl_passwd changed
execute "update-sasl-passwd" do
	command "/usr/sbin/postmap sasl_passwd"
	cwd "/etc/postfix"
	action :nothing
end

template "/etc/postfix/sasl_passwd" do
	source "sasl_passwd.erb"
	mode 0600
	owner "root"
	group "root"
	notifies :run, resources(:execute => "update-sasl-passwd")
	notifies :reload, resources(:service=>"postfix")
end

# start service
service "postfix" do
	action :start
end
