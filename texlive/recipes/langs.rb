%w{
	texlive-lang-latin 
	texlive-lang-german 
	texlive-lang-czechslovak 
	texlive-lang-greek
}.each do |pkg|
  package pkg do
	action :install
	options "--fix-missing"
  end
end

