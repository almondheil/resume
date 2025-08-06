all: AlmondHeil-Resume.pdf

AlmondHeil-Resume.pdf: AlmondHeil-Resume.tex images/cat\ banner.png
	@mkdir -p aux
	@pdflatex -output-directory="aux" AlmondHeil-Resume.tex
	@mv aux/AlmondHeil-Resume.pdf .

clean:
	rm -rf AlmondHeil-Resume.pdf aux
