LATEX = pdflatex
VISU = evince
SRCR = Rapport_Stage_Vidjil.tex
SRCA = Rapport_Stage_Vidjil_Annexes.tex
PDF = $(SRC:.tex=.pdf)

all: visu

visu: compileAll
	$(VISU) $(PDF)

compileAll: compileR compileA

compileR:
	$(LATEX) $(SRCR) && $(LATEX) $(SRCR)

compileA:
	$(LATEX) $(SRCA) && $(LATEX) $(SRCA)

clean:
	rm -f *.synctex.gz *.out *.toc *.aux *.log


