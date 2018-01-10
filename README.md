# Papers

> Knowledge, by definition, should be open and accessible.

This repository holds all my [(La)TeX](https://www.latex-project.org/) papers. LaTeX is [free software](https://www.gnu.org/philosophy/free-sw.html), so you can install it on your own machine and create papers like these in no time!

## Build from Source

LaTeX makes it easy to compile nice-looking PDF files. All papers can be compiled from source with `pdflatex <paper>`, but you should really be using the make commands instead. This avoids the clutter from the output of `pdflatex` and ensures that everything works.

Requirements: [Crystal](https://crystal-lang.org/) (for the [specs](spec/)) and a [(La)TeX](https://www.latex-project.org/) distribution (I use [TeX Live](https://wiki.archlinux.org/index.php/TeX_Live)).

To build a paper from source, simply clone this repository then use `make <paper>` for the paper you want to build.

## List of Papers

This is a list of all the papers included in this repository.

### Specifications

These are papers that describe why and how things will be implemented, as opposed to their actual implementations.

- [Mica: A Specification](#) ([source](mica/main.tex)) - This is the formal specification for [Mica](https://github.com/GloverDonovan/mica), a universal way to change color schemes.
