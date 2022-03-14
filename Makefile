all: build/dpg22.pdf

texoptions = \
	     --lualatex \
	     --interaction=nonstopmode \
	     --halt-on-error \
	     --output-directory=build

build/dpg22.pdf: FORCE | build
	latexmk $(texoptions) dpg22.tex

preview: FORCE | build
	latexmk $(texoptions) -pvc dpg22.tex

FORCE:

build:
	mkdir -p build

clean:
	rm -r build
