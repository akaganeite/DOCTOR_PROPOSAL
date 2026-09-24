# 开题报告编译 Makefile
# 用法：
#   make          编译 Thesis.pdf（xelatex → bibtex → xelatex ×2）
#   make clean    清除编译中间文件（保留 PDF）
#   make cleanall 清除中间文件和 PDF

MAIN   = Thesis
TEXSRC = $(shell find Tex Style -name '*.tex' 2>/dev/null) Thesis.tex
BIBSRC = $(wildcard Biblio/*.bib)

.PHONY: all clean cleanall

all: $(MAIN).pdf

$(MAIN).pdf: $(TEXSRC) $(BIBSRC) $(wildcard Style/*.cls Style/*.sty Style/*.cfg Style/*.bst)
	xelatex -interaction=nonstopmode $(MAIN)
	bibtex $(MAIN)
	xelatex -interaction=nonstopmode $(MAIN)
	xelatex -interaction=nonstopmode $(MAIN)

clean:
	rm -f $(MAIN).aux $(MAIN).bbl $(MAIN).blg $(MAIN).log \
	      $(MAIN).out $(MAIN).toc $(MAIN).lof $(MAIN).lot \
	      $(MAIN).fdb_latexmk $(MAIN).fls $(MAIN).synctex.gz \
	      Tex/*.aux

cleanall: clean
	rm -f $(MAIN).pdf
