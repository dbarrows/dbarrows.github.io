TTOP = template/template-top.html
TBOTTOM = template/template-bottom.html

index.html: content/about-content.html css/style.css $(TTOP) $(TBOTTOM)
	./stitch.sh $(TTOP) $< $(TBOTTOM) >$@

content/about-content.html: markdown/about.md
	pandoc $< --output $@

cv.html: content/cv-content.html css/style.css $(TTOP) $(TBOTTOM)
	./stitch.sh $(TTOP) $< $(TBOTTOM) >$@

content/cv-content.html: cv/cv.md
	pandoc $< --output $@

.PHONEY: all clean
all: index.html cv.html
clean:
	rm -rf index.html content/about-content.html cv.html content/cv-content.html