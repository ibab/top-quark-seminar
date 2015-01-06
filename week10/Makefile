
TeXOptions = -lualatex \
			 -output-directory=build \
			 -halt-on-error \
			 -interaction=nonstopmode

all: build/main.pdf

build/main.pdf: main.tex main.bib ../header.tex | build
	latexmk $(TeXOptions) main.tex

build:
	mkdir -p build

clean:
	rm -rf build

