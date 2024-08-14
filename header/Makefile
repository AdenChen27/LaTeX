define compile
    $(eval $@_INPUT_NAME = $(1))
    $(eval $@_OUTPUT_NAME = $(2))

    latexpand ${$@_INPUT_NAME} -o ${$@_OUTPUT_NAME} --keep-comments --verbose
    mv ${$@_OUTPUT_NAME} ../${$@_OUTPUT_NAME}
    cp ../${$@_OUTPUT_NAME} ../sample/${$@_OUTPUT_NAME}
endef

.PHONY: all


all: article-base beamer-base


article-base: article-base.tex
	@$(call compile,"article-base.tex","adenc.sty")


beamer-base: beamer-base.tex
	@$(call compile,"beamer-base.tex","adenc-beamer.sty")
