# Diamond-Patterns Presentation
# Ian Dennis Miller

all: presentation.pdf thumbs transcript.docx transcript.html manuscript.pdf
	@echo "All done"

presentation.pdf: presentation.md
	pandoc \
		-f markdown \
		-t beamer \
		--include-in-header pandoc/header.tex \
		-V theme=Madrid \
		-V colortheme=seagull \
		-o presentation.pdf \
		presentation.md

transcript.docx: transcript.md
	cat transcript.md | \
	grep -v '!\[Thumbnail\](thumbs' | \
	pandoc \
		-f markdown \
		-t docx \
		--toc \
		--toc-depth=2 \
		-o transcript.docx

transcript.html: transcript.md
	pandoc \
		-f markdown \
		-t html5 \
		--self-contained \
		--template=pandoc/template.md \
		--include-in-header=pandoc/header.html \
		--include-before-body=pandoc/before.html \
		--include-after-body=pandoc/after.html \
		-o transcript.html \
		transcript.md

# adapted from https://github.com/iamamutt/pandoc-apa
manuscript.pdf: transcript.md
	cat transcript.md | \
	grep -v '!\[Thumbnail\](thumbs' | \
	pandoc \
        --from=markdown \
        --to=latex \
        --csl=pandoc/apa.csl \
        --template=pandoc/apa_template.tex \
        --standalone \
        --output=manuscript.pdf

# split PDF into individual PNG images
# 	geometry: produce images at specified resolution
# 	density: render source PDF at 90 dpi
# 	scene: slide numbering starts at 01
#   strip: reduce file size
thumbs: presentation.pdf
	rm -rf ./thumbs
	mkdir ./thumbs
	convert \
		-geometry 640x360 \
		-density 150 \
		-scene 1 \
		-strip \
		-quality 85 \
		presentation.pdf \
		thumbs/%02d.jpg

products: all
	mkdir -p products
	cp presentation.pdf transcript.docx transcript.html manuscript.pdf products
	@echo "Products done"

.PHONY: all thumbs products
