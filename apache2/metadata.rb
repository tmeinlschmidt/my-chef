maintainer        "tmeinlschmidt"
maintainer_email  "tomas@meinlschmidt.com"
description       "Configures apache2"
version           "0.1"

# define attributes
attribute "apache",
	:display_name => "apache2",
	:description => "apache2 web server",
	:type => "hash"

attribute "apache/listen_port",
	:display_name => "listen port",
	:description => "webserver default listen port",
	:default => "80"

attribute "apache/contact",
	:display_name => "e-mail contact",
	:description => "webmaster e-mail contact",
	:default => "tom@meinlschmidt.org"

attribute "apache/timeout",
	:display_name => "connection timeout",
	:description => "connection timeout",
	:default => "300"

attribute "apache/keepalive",
	:display_name => "keepalive",
  	:description => "(on) to enable persistent connections",
	:default => "off"

attribute "apache/keepaliverequests",
	:display_name => "keepalive requests",
  	:description => "number of requests allowed on a persistent connection",
	:default => "12"

attribute "apache/keepalivetimeout",
	:display_name => "keepalive timeout",
  	:description => "time to wait for requests on persistent connection",
	:default => "2"

# other attribs
attribute "apache/prefork",
  :display_name => "Apache2 prefork",
  :description => "Apache prefork tuning attributes.",
  :type => "hash"

attribute "apache/prefork/startservers",
  :display_name => "MPM StartServers",
  :description => "number of MPM servers to start",
  :default => "16"

attribute "apache/prefork/minspareservers",
  :display_name => "MPM MinSpareServers",
  :description => "minimum number of spare server processes",
  :default => "16"

attribute "apache/prefork/maxspareservers",
  :display_name => "MPM MaxSpareServers",
  :description => "maximum number of spare server processes",
  :default => "32"

attribute "apache/prefork/maxclients",
  :display_name => "MPM MaxClients",
  :description => "maximum number of simultaneous connections",
  :default => "256"

attribute "apache/prefork/maxrequestsperchild",
  :display_name => "MPM MaxRequestsPerChild",
  :description => "maximum number of request a child process will handle",
  :default => "10000"

# worker
attribute "apache/worker",
  :display_name => "Apache2 worker",
  :description => "worker tuning attributes.",
  :type => "hash"

attribute "apache/worker/serverlimit",
  :display_name => "MPM ServerLimit",
  :description => "max number of server processes to start",
  :default => "16"

attribute "apache/worker/startservers",
  :display_name => "MPM StartServers",
  :description => "initial number of server processes to start",
  :default => "4"

attribute "apache/worker/maxclients",
  :display_name => "MPM MaxClients",
  :description => "maximum number of simultaneous connections",
  :default => "1024"

attribute "apache/worker/minsparethreads",
  :display_name => "MPM MinSpareThreads",
  :description => "minimum number of spare worker threads",
  :default => "64"

attribute "apache/worker/maxsparethreads",
  :display_name => "MPM MaxSpareThreads",
  :description => "maximum number of spare worker threads",
  :default => "192"

attribute "apache/worker/threadsperchild",
  :display_name => "MPM ThreadsPerChild",
  :description => "constant number of worker threads in each server process",
  :default => "64"

attribute "apache/worker/maxrequestsperchild",
  :display_name => "MPM MaxRequestsPerChild",
  :description => "maximum number of request a child process will handle",
  :default => "0"

