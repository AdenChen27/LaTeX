.PHONY: clean view
filename = notes


$(filename): $(filename).tex
	mkdir -p aux
	TEXINPUTS=../:$$TEXINPUTS latexmk ./$@ -pdf -jobname=./aux/$(filename)
	mv ./aux/$(filename).pdf ./$(filename).pdf

view: $(filename).pdf
	open $(filename).pdf

clean:
	latexmk -c -output-directory=aux
