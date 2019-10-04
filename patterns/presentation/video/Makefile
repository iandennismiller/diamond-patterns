# Ian Dennis Miller
# Urban Legends
# Video Rendering Makefile

# NB: *.wav files are present in narration/

all: slides av mp4
	@echo ok

# create MP4
#	f: specify file format
# 	tune: use stillimage x264 "psy" tuning
#	profile: select an h264 capabilities profile compatible with YouTube
# 	pix_fmt: utilize 4:2:0 color space expected by YouTube
# 	b: bitrate
# 	r: frame rate
mp4:
	cat render/*.mpeg | ffmpeg \
		-y \
		-f mpeg -i - \
		-codec:v libx264 \
			-profile:v high \
			-tune stillimage \
			-crf 21 \
			-bf 2 \
			-flags +cgop \
			-pix_fmt yuv420p \
			-r:v 1 \
		-codec:a aac \
			-strict \
			-2 \
			-b:a 384k \
			-r:a 48000 \
		-movflags faststart \
		presentation.mp4

# split PDF into individual PNG images
# 	geometry: produce images at native resolution for HD 720p
# 	density: render source PDF at 300 dpi
# 	scene: slide numbering starts at 01
slides:
	rm -rf ./slides
	mkdir ./slides
	convert \
		-geometry 1280x720 \
		-density 300 \
		-scene 1 \
		../presentation.pdf \
		slides/hd-%02d.wav.png

# audio/video: combine each PNG with its corresponding WAV, save as MPEG
# 	loop: repeat the PNG input frame
# 	shortest: stop time at the end of the audio
# 	qscale: highest quality
av:
	rm -rf ./render
	mkdir ./render
	ls narration | xargs -I {} ffmpeg \
		-y \
		-loop 1 -i slides/hd-{}.png \
		-i narration/{} -shortest \
		-qscale:v 2 \
		render/{}.mpeg

.PHONY: slides av mp4 all
