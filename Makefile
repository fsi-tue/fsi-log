SOURCE=fsi-log.tex
TARGET=fsi-log.pdf
PRINT=fsi-log-print.pdf

fsi-log:
	lualatex fsi-log.tex
	lualatex fsi-log.tex

distclean:
	rm *.pdf *.log *.toc *.aux *.out *.synctex.gz

clean:
	rm *.log *.toc *.aux *.out *.synctex.gz

pdf:
	make fsi-log
	make clean

printable:
	make fsi-log
	pdfbook --batch fsi-log.pdf -o fsi-log-print.pdf

printable-pdf:
	make fsi-log
	pdfbook --batch fsi-log.pdf -o fsi-log-print.pdf
	rm fsi-log.pdf
	make clean

default: fsi-log
