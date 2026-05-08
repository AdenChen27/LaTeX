.PHONY: clean view beamer
filename = sample


$(filename): $(filename).tex
	mkdir -p aux
	latexmk ./$@ -xelatex -shell-escape -jobname=./aux/$(filename)
	mv ./aux/$(filename).pdf ./$(filename).pdf

beamer:
	$(MAKE) filename=beamer-sample

view: $(filename).pdf
	open $(filename).pdf

clean:
	latexmk -c -output-directory=aux
