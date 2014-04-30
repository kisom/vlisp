HTML_FILES = Lisp.html
PDF_FILES = Lisp.pdf

%.html: %.glob
	coqdoc $*.v

%.pdf: %.tex
	xelatex $<

%.tex: %.glob
	coqdoc -latex $*.v

%.glob: %.v
	coqc $<


all: $(HTML_FILES) $(PDF_FILES)

clean:
	rm -f *.glob *.vo *.tex *.log *.aux *.sty

nuke: clean
	rm -f *.pdf *.html *.css
