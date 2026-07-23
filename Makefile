.PHONY: clean view
filename = test


$(filename).pdf: $(filename).tex
	mkdir -p aux
	latexmk ./$(filename) -xelatex -shell-escape -jobname=./aux/$(filename)
	mv ./aux/$(filename).pdf ./$(filename).pdf

$(filename): $(filename).pdf

view: $(filename).pdf
	open $(filename).pdf

clean:
	latexmk -c -output-directory=aux
