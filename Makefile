all: almondHeil-Resume.pdf

almondHeil-Resume.pdf: almondHeil-Resume.tex images/cat\ banner.png
	@mkdir -p aux
	@pdflatex -output-directory="aux" almondHeil-Resume.tex
	@mv aux/almondHeil-Resume.pdf .

clean:
	rm -rf almondHeil-Resume.pdf aux
