%.pdf:
	pdflatex $*.tex

template.pdf:
	rm -rf ./pythontex-files-template
	pdflatex -interaction=nonstopmode template.tex
	./build.sh ./template.tex
	pdflatex -interaction=nonstopmode template.tex
	biber template
	pdflatex template.tex

%.docx:
	pandoc -o $*.docx $*.tex

PDFTARGETS=template.pdf

WORDTARGETS=template.docx

TARGETS=$(PDFTARGETS)

pdf: $(PDFTARGETS) junk

docx: $(WORDTARGETS)

all: $(TARGETS)

clean: junk
	rm -rf $(TARGETS)
	rm -rf template.pytxcode
	rm -rf ./pythontex-files-template

junk:
	ls template.* | grep -vE "^template\.(bib|tex)$$" | xargs -r rm -rf
	rm -rf *.aux *.log
	
.PHONY: pdf docx all clean junk
