maintainer        "tmeinlschmidt"
maintainer_email  "tomas@meinlschmidt.com"
license           "Apache 2.0"
description       "Installs rails and webapp"
version           "0.1"

%w{ ruby apache2 }.each do |cb|
  depends cb
end

attribute "rails",
  :display_name => "Rails",
  :description => "Hash of Rails attributes",
  :type => "hash"

attribute "rails/version",
  :display_name => "Rails Version",
  :description => "Specify the version of Rails to install",
  :default => "false"

attribute "rails/environment",
  :display_name => "Rails Environment",
  :description => "Specify the environment to use for Rails",
  :default => "production"

attribute "rails/max_pool_size",
  :display_name => "Rails Max Pool Size",
  :description => "Specify the MaxPoolSize in the Apache vhost",
  :default => "4"

