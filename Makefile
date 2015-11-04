all : document.pdf 

document.pdf : document.tex
	pdflatex --file-line-error-style "document"
	pdflatex --file-line-error-style "document"
	texcount -sum document.tex ch*/document.tex
	
