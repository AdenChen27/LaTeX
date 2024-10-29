define compile
    $(eval $@_INPUT_NAME = $(1))
    $(eval $@_OUTPUT_NAME = $(2))

    latexpand ${$@_INPUT_NAME} -o ${$@_OUTPUT_NAME} --keep-comments --verbose
    mv ${$@_OUTPUT_NAME} ../${$@_OUTPUT_NAME}
    cp ../${$@_OUTPUT_NAME} ../sample/${$@_OUTPUT_NAME}
endef

.PHONY: all


all: article beamer readme


article: pre-article.tex
	@$(call compile,"pre-article.tex","adenc.sty")


beamer: pre-beamer.tex
	@$(call compile,"pre-beamer.tex","adenc-beamer.sty")


readme: pre-README.md ../sample/public-template.tex
	 (cat pre-README.md ; echo '```tex' ; cat ../sample/public-template.tex ; echo '```') > ../README.md
	 (cat pre-pdf2img-README.md ; echo '```' ; ../pdf2img/pdf2img.py -h ; echo '```') > ../pdf2img/README.md

