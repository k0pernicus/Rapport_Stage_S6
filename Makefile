LATEX = pdflatex
SRC = fichier.txt
PDF = $(SRC = .tex : .pdf)
all: $(PDF)
%.pdf:%.tex
	pdflatex $^ && pdflatex $^
