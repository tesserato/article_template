# latexmk -lualatex -f -interaction=nonstopmode THESIS.tex

$name = "Representation"
pdflatex.exe --shell-escape $name -f -interaction=nonstopmode -file-line-error
bibtex $name
# makeglossaries $name
pdflatex.exe --shell-escape $name -f -interaction=nonstopmode -file-line-error
pdflatex.exe --shell-escape $name -f -interaction=nonstopmode -file-line-error

# pandoc PulsesEnvelope.tex --bibliography=bibli.bib -o PulsesEnvelope.docx