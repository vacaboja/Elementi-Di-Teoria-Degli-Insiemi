all:
	pdflatex "Appunti di Elementi di Teoria Degli Insiemi.tex"

clean:
	rm *.aux *.log *.out *.pre *.toc sezioni/*.aux 2>/dev/null
