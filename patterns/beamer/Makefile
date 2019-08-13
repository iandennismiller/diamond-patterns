# Diamond-Patterns
# Ian Dennis Miller

slides:
	pandoc \
		-f markdown \
		-t beamer \
		--include-in-header pandoc/header.tex \
		-V theme=Madrid \
		-V colortheme=seagull \
		-o presentation.pdf \
		presentation.md

doc:
	cat transcript.md | \
	grep -v '!\[Thumbnail\](thumbs' | \
	pandoc \
		-f markdown \
		-t docx \
		--toc \
		--toc-depth=2 \
		-o transcript.docx

html:
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

# split PDF into individual PNG images
# 	geometry: produce images at specified resolution
# 	density: render source PDF at 90 dpi
# 	scene: slide numbering starts at 01
#   strip: reduce file size
thumbs:
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

# adapted from https://github.com/iamamutt/pandoc-apa
manuscript:
	cat transcript.md | \
	grep -v '!\[Thumbnail\](thumbs' | \
	pandoc \
        --from=markdown \
        --to=latex \
        --csl=pandoc/apa.csl \
        --template=pandoc/apa_template.tex \
        --standalone \
        --output=manuscript.pdf

all: doc slides thumbs manuscript html
	@echo "All done"

products: all
	cp ./build/* ../products
	@echo "Products done"

.PHONY: all slides doc thumbs html products manuscript
