# 
execute 'update' do
	command 'apt-get update'
	action :run
end

# core packages
%w{
	texlive
	tex-common
	texlive-base
	texlive-common
	texlive-base-bin
	texlive-pictures
	texlive-latex-base
	texlive-fonts-recommended
	texlive-generic-recommended
	texlive-latex-recommended
	texlive-humanities
	texlive-pstricks
}.each do |pkg|
  package pkg do
  	action :install
	options "--fix-missing"
  end
end

# extras
include_recipe "texlive::extras" if node[:texlive][:install_extras] == "yes"

# lang support
include_recipe "texlive::langs" if node[:texlive][:install_langs] == "yes"

# doc
include_recipe "texlive::docs" if @node[:texlive][:install_docs] == "yes"
