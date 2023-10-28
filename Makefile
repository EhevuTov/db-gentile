all:
	xsltproc \
		--stringparam body.font.family "Arial Unicode MS" \
		--stringparam title.font.family "Arial Unicode MS" \
		--stringparam admon.graphics 1 \
		--stringparam callout.graphics 1 \
		--stringparam navig.graphics 1 \
		--stringparam admon.graphics.path /usr/local/Cellar/docbook-xsl/1.79.2_1/docbook-xsl-ns/images/ \
		--stringparam toc.section.depth 0 \
		--stringparam generate.index 1 \
		--stringparam make.index.markup 1 \
		--xinclude /usr/local/Cellar/docbook-xsl/1.79.2_1/docbook-xsl/xhtml5/docbook.xsl book.xml > book.html
	xsltproc \
		--stringparam body.font.family "Arial Unicode MS" \
		--stringparam title.font.family "Arial Unicode MS" \
		--stringparam admon.graphics 1 \
		--stringparam callout.graphics 1 \
		--stringparam navig.graphics 1 \
		--stringparam admon.graphics.path /usr/local/Cellar/docbook-xsl/1.79.2_1/docbook-xsl-ns/images/ \
		--stringparam toc.section.depth 0 \
		--stringparam generate.index 1 \
		-xinclude -o book.fo /usr/local/Cellar/docbook-xsl/1.79.2_1/docbook-xsl/fo/profile-docbook.xsl book.xml && fop book.fo book.pdf -c fop.xconf -v
test: all
	open book.html
	open book.pdf
clean:
	rm *.html *.css *.fo *.pdf
