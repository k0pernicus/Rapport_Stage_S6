LATEX = pdflatex
VISU = evince
SRC = Rapport_Stage_Vidjil.tex
PDF = $(SRC:.tex=.pdf)

all: visu

visu: compile
	$(VISU) $(PDF)

compile:
	$(LATEX) $(SRC) && $(LATEX) $(SRC)

clean:
	rm -f *.synctex.gz *.out *.toc *.aux *.log


