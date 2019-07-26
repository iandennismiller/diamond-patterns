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

%.pdf: %.tex
	@echo compiling $<...
	latexmk -xelatex "$(basename $<).tex"

%.spchk: %.tex
	@aspell \
		--encoding=UTF-8 \
		--lang=en \
		$(NOSPELL) \
		--personal=./.aspell.en.per \
		check $<

spell: $(addsuffix .spchk,$(basename $(TEX_FILES)))

clean:
	rm -f \
		*.aux \
		*.bbl \
		*.blg \
		*.fdb_latexmk \
		*.fls \
		*.lof \
		*.toc \
		*.4ct \
		*.4tc \
		*.css \
		*.dvi \
		*.idv \
		*.html \
		*.lg \
		*.log \
		*.ncx \
		*.tmp \
		*.xref \
		*.xwm \
		*.lot \
		*.out \
		*.synctex.gz \
		content.opf

.PHONY: all clean spell
