# This Makefile handles compiling all my LaTeX papers!
#
# It automatically separates the source files from the
# intermediary build files and output files.
#
# The end result looks something like this:
#
# - Paper1/ (Source files)
#   - main.tex
#   - .tex/ (Intermediary files)
#   	- main.aux
#   	- main.log
# - Paper1.pdf (Output files)

# This is a test case to make sure that everything works.
# It uses out/ instead of .tex/

paper := Mica

bin/${paper}.pdf: ${paper}/main.tex
	mkdir -p ${paper}/.tex
	pdflatex -output-directory ${paper}/.tex ${paper}/main.tex
	mkdir -p bin
	cp ${paper}/.tex/main.pdf bin/${paper}.pdf
