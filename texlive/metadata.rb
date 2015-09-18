maintainer       "tmeinlschmidt"
maintainer_email "tomas@meinlschmidt.com"
license          "Apache 2.0"
description      "Installs/Configures texlive"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.1"

attribute "texlive",
	:display_name => "TeXlive",
	:description => "TeXlive package",
	:type => "hash"

attribute "texlive/install_extras",
	:display_name => "install extras",
	:description => "(YES) to install extras",
	:default => "yes"

attribute "texlive/install_langs",
	:display_name => "install languages support",
	:description => "(YES) to install language support",
	:default => "yes"

attribute "texlive/install_docs",
	:display_name => "install docs",
	:description => "(YES) to install docs",
	:default => "no"
