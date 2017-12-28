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
Hello.pdf: Hello/main.tex
	mkdir -p Hello/out
	pdflatex -output-directory Hello/out Hello/main.tex
	mv Hello/out/main.pdf Hello.pdf
