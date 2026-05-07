.PHONY: clean view beamer
filename = sample


$(filename): $(filename).tex
	mkdir -p aux
	latexmk ./$@ -xelatex -shell-escape -jobname=./aux/$(filename)
	mv ./aux/$(filename).pdf ./$(filename).pdf

beamer: beamer-sample.tex
	mkdir -p aux
	latexmk ./$< -xelatex -shell-escape -jobname=./aux/beamer-sample
	mv ./aux/beamer-sample.pdf ./beamer-sample.pdf

view: $(filename).pdf
	open $(filename).pdf

clean:
	latexmk -c -output-directory=aux
