# This Makefile handles compiling all my LaTeX papers!
#
# It automatically separates the source files from the
# intermediary build files and output files.
#
# The end result looks something like this:
#
# - paper-name/ (Source files)
#   - main.tex
#   - .tex/ (Intermediary files)
#   	- main.aux
#   	- main.log
# - bin/ (Output files)
#   	- paper-name.pdf
#
# I also wrote some specifications (in spec/) to make sure
# that my papers have what I expect them to have. Check it out!

paper := mica

bin/${paper}.pdf: ${paper}/main.tex spec/tex/${paper}.cr spec/pdf/${paper}.cr
	@# Make sure that the .tex file is good to go
	crystal spec spec/tex/${paper}.cr

	@# Once those tests pass, build the actual paper
	mkdir -p ${paper}/.tex
	pdflatex -output-directory ${paper}/.tex ${paper}/main.tex
	mkdir -p bin
	cp ${paper}/.tex/main.pdf bin/${paper}.pdf

	@# Ensure that the output pdf is what we'd expect
	crystal spec spec/pdf/${paper}.cr
