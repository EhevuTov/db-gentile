all:
	xsltproc --xinclude /usr/local/Cellar/docbook-xsl/1.78.1/docbook-xsl/xhtml5/docbook.xsl book.xml > book.html
test: all
	open book.html
clean:
	rm *.html *.css
