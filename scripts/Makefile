define compile
    $(eval $@_INPUT_NAME = $(1))
    $(eval $@_OUTPUT_NAME = $(2))

    latexpand ${$@_INPUT_NAME} -o ${$@_OUTPUT_NAME} --keep-comments --verbose
    mv ${$@_OUTPUT_NAME} ../${$@_OUTPUT_NAME}
    cp ../${$@_OUTPUT_NAME} ../sample/${$@_OUTPUT_NAME}
endef

.PHONY: all


all: adenc beamer readme snippets


adenc: pre-adenc.tex
	@$(call compile,"pre-adenc.tex","adenc.sty")


beamer: pre-beamer.tex
	@$(call compile,"pre-beamer.tex","adenc-beamer.sty")


snippets:
	mkdir -p ../snippets
	cp /Users/aden/nix-config/nvim/lua/snippets/tex/*.lua ../snippets/


readme: pre-README.md ../sample/public-template.tex
	 (cat pre-README.md ; echo '```tex' ; cat ../sample/public-template.tex ; echo '```') > ../README.md
	 # pdf2img:
	 cp -f ~/bin/pdf2img.py ../pdf2img/pdf2img.py
	 # copy from ~/bin so the repo has the real file (not a symlink) for GitHub
	 (cat pre-pdf2img-README.md ; echo '```' ; ../pdf2img/pdf2img.py -h ; echo '```') > ../pdf2img/README.md

