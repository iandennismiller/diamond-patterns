# Letter Makefile

TEX_FILES = \
	cover_letter_2.tex \
	formal_letter_1.tex
PDF_FILES = $(TEX_FILES:.tex=.pdf)

# ignore the following LaTeX commands when spell checking
NOSPELL= \
	--add-tex-command="bibliographystyle op" \
	--add-tex-command="bibliography op" \
	--add-tex-command="thispagestyle op"
	--add-tex-command="citep op" \
	--add-tex-command="citet op"

all: $(PDF_FILES)
	@echo done

clean:
	rm -rf .build
	mkdir -p .build

%.pdf: %.tex
	@echo compiling $<...
	pdflatex -output-directory=.build "$(basename $<).tex"
	pdflatex -output-directory=.build "$(basename $<).tex"
	cp ".build/$(basename $<).pdf" .

%.spchk: %.tex
	@aspell \
		--encoding=UTF-8 \
		--lang=en \
		$(NOSPELL) \
		--personal=./.aspell.en.per \
		check $<

spell: $(addsuffix .spchk,$(basename $(TEX_FILES)))

.PHONY: all clean spell
