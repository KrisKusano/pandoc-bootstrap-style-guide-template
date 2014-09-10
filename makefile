fname=style
infile=$(fname).md
outfile=$(fname).html
templatefile=template.html

all: clean $(outfile)

$(outfile): $(infile)
	pandoc --template $(templatefile) --toc --toc-dept 2 -N \
		-o $(outfile) $(infile)
clean:
	rm -f $(outfile)
