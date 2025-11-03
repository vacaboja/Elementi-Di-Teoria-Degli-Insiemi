all:
	pdflatex dispense-eti.tex

clean:
	rm *.aux *.log *.out *.pre *.toc sezioni/*.aux 2>/dev/null
