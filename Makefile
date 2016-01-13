SOURCE=fsi-log.tex
TARGET=fsi-log.pdf
PRINT=fsi-log-print.pdf

fsi-log:
	pdflatex $SOURCE

distclean:
	rm *.pdf *.log *.toc *.aux *.out *.synctex.gz

clean:
	rm *.log *.toc *.aux *.out *.synctex.gz

pdf:
	make fsi-log
	make clean

printable:
	make fsi-log
	pdfbook --batch $TARGET -o $PRINT

printable-pdf:
	make pdf
	pdfbook --batch $TARGET -o $PRINT
	rm $TARGET

default: fsi-log
