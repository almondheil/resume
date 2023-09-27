TODAY=$(date +%Y-%m-%d)

# Archive current tex file to hold onto old versions in future
cp "almondheil-Resume.tex" "archive/archived-$TODAY.tex"

# Compile tex file
pdflatex -output-directory="aux" almondheil-Resume.tex

# Move the pdf to top level so it's easier to access
mv aux/almondheil-Resume.pdf .
