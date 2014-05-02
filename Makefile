HTML_FILES = Lisp.html
PDF_FILES = paper.pdf
PAPER_HOME = files.kyleisom.net:files/vlisp/

%.html: %.glob
	coqdoc $*.v

paper.pdf: Lisp.tex paper.tex
	xelatex paper.tex

%.tex: %.glob
	coqdoc -latex -s --body-only $*.v

%.glob: %.v
	coqc $<

upload_paper: paper.pdf
	scp paper.pdf $(PAPER_HOME)

all: $(HTML_FILES) $(PDF_FILES)

clean:
	rm -f *.glob *.vo Lisp.tex *.log *.aux *.sty

nuke: clean
	rm -f *.pdf *.html *.css
