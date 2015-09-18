%w{
	texlive-latex-base-doc
	texlive-doc-base
	texlive-latex-recommended-doc
	texlive-humanities-doc
	texlive-pstricks-doc
	texlive-base-bin-doc
	texlive-pictures-doc
	texlive-latex-extra-doc
	texlive-fonts-recommended-doc
}.each do |pkg|
  package pkg do
	action :install
	options "--fix-missing"
  end
end

