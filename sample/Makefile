.PHONY: clean view beamer
filename = sample


$(filename): $(filename).tex
	mkdir -p aux
	latexmk ./$@ -pdf -jobname=./aux/$(filename)
	mv ./aux/$(filename).pdf ./$(filename).pdf

beamer: beamer-sample.tex
	mkdir -p aux
	latexmk ./$< -pdf -jobname=./aux/beamer-sample
	mv ./aux/beamer-sample.pdf ./beamer-sample.pdf

view: $(filename).pdf
	open $(filename).pdf -a Skim

clean:
	latexmk -c -output-directory=aux

