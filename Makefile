HTML_FILES = Lisp.html
PDF_FILES = Lisp.pdf

%.html: %.glob
	coqdoc $*.v

Lisp.pdf: Lisp.tex paper.tex
	xelatex paper.tex

%.tex: %.glob
	coqdoc -latex -s --body-only $*.v

%.glob: %.v
	coqc $<


all: $(HTML_FILES) $(PDF_FILES)

clean:
	rm -f *.glob *.vo Lisp.tex *.log *.aux *.sty

nuke: clean
	rm -f *.pdf *.html *.css
