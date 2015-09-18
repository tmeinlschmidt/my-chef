maintainer       "tmeinlschmidt"
maintainer_email "tomas@meinlschmidt.com"
license          "Apache 2.0"
description      "Installs/Configures postfix"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.2"
recipe			 "postfix", "Installs postfix with smart_relay and SMTP AUTH (nocerts)"

attribute "postfix",
	:display_name => "Postfix",
	:description => "Postfix core",
	:type => "hash"

attribute "postfix/myhostname",
	:display_name => "my hostname",
	:description => "hostname",
	:default => "fqdn"

attribute "postfix/relay_host",
	:display_name => "relay host",
	:description => "outside relay host",
	:default => ""

attribute "postfix/myorigin",
	:display_name => "my origin",
	:description => "my origin",
	:default => "$myhostname"

attribute "postfix/enable_transport",
	:display_name => "enable transport",
	:description => "(YES) to enable internal mail transport",
	:default => "yes"

attribute "postfix/domain",
	:display_name => "domain name",
	:description => "domain name we serve and delivery for",
	:default => ""

attribute "postfix/internal_smtp",
	:display_name => "internal SMTP",
	:description => "internal smtp we relay to",
	:default => ""

attribute "postfix/enable_sasl",
	:display_name => "enable sasl",
	:description => "(yes) to enable sasl",
	:default => "yes"

attribute "postfix/smtp_user",
	:display_name => "username of SMTP AUTH",
	:description => "username",
	:default => ""

attribute "postfix/smtp_password",
	:display_name => "password of SMTP AUTH",
	:description => "password",
	:default => ""
