TODAY=$(date +%Y-%m-%d)

all: almondheil-Resume.pdf

almondheil-Resume.pdf: almondheil-Resume.tex
	@cp "almondheil-Resume.tex" "archive/archived-$TODAY.tex"
	@pdflatex -output-directory="aux" almondheil-Resume.tex
	@mv aux/almondheil-Resume.pdf .

clean:
	rm almondheil-Resume.pdf
