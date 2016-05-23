all:
	python forecast.py
	Rscript sd.R
clean:
	rm -rf *.jpg
	rm -rf *.pdf
	rm -rf *.data
