
TeXOptions = -lualatex \
			 -output-directory=build \
			 -halt-on-error \
			 -interaction=nonstopmode

all: build/all.pdf

build/all.pdf: all.tex header.tex | build
	latexmk $(TeXOptions) all.tex

build:
	mkdir -p build

clean:
	rm -rf build

