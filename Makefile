.PHONY: clean, view
filename = main


$(filename): $(filename).tex
	latexmk ./$@ -pdf -jobname=./aux/$(filename)

view: aux/$(filename).pdf
	open aux/$(filename).pdf -a Skim

clean:
	latexmk -c -output-directory=aux

