%w{
	texlive-plain-extra 
	texlive-formats-extra 
	texlive-generic-extra 
	texlive-extra-utils
	texlive-latex-extra
}.each do |pkg|
  package pkg do
	action :install
	options "--fix-missing"
  end
end

