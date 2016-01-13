fsi-log:
	pdflatex fsi-log.tex

distclean:
	rm *.pdf *.log *.toc *.aux *.out

clean:
	rm *.log *.toc *.aux *.out

pdf:
	make fsi-log
	make clean

printable:
	make fsi-log
	pdfbook --batch fsi-log.pdf -o fsi-log-print.pdf

printable-pdf:
	make pdf
	pdfbook --batch fsi-log.pdf -o fsi-log-print.pdf
	rm fsi-log.pdf

default: fsi-log
