maintainer        "tmeinlschmidt"
maintainer_email  "tomas@meinlschmidt.com"
description       "Configures memcached (based on 37signals)"
version           "0.1"
recipe			  "memcached", "installs memcached daemon"
depends           "runit"

attribute "memcached",
	:display_name => "memcached",
	:description => "memcached core",
	:type => "hash"

attribute "memcached/max_memory",
	:display_name => "max memory",
	:description => "max memory used",
	:default => "256"

attribute "memcached/max_connections",
	:display_name => "max connections",
	:description => "max connections allowed",
	:default => "1024"

attribute "memcached/port",
	:display_name => "port",
	:description => "port used",
	:default => "11211"

attribute "memcached/user",
	:display_name => "user",
	:description => "memcached runs as user",
	:default => "nobody"
