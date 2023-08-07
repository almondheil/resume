TODAY=$(date +%Y-%m-%d)

# Archive current tex file to hold onto old versions in future
cp "AlmondHeil-Resume.tex" "archive/archived-$TODAY.tex"

# Compile tex file
pdflatex -output-directory="aux" AlmondHeil-Resume.tex

# Move the pdf to top level so it's easier to access
mv aux/AlmondHeil-Resume.pdf .
