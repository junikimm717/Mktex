%.pdf:
	latexmk -pdf $*.tex

%.docx:
	pandoc -o $*.docx $*.tex

PDFTARGETS=template.pdf

WORDTARGETS=template.docx

pdf: $(PDFTARGETS) junk

docx: $(WORDTARGETS)


clean:
	rm -rf *.aux *.log $(PDFTARGETS) $(WORDTARGETS)

junk:
	rm -rf *.aux *.log

# if you wish to compile word targets as well, put "docx" into the "all" target below.

all: pdf junk
	
.PHONY: %.docx %.pdf pdf docx all clean junk
