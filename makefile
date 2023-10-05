PANOPTS=--standalone --table-of-contents --css=main.css --section-divs --email-obfuscation=references --include-after-body=footer.html

%.html: %.md | main.css footer.html
	pandoc $(PANOPTS) --from=markdown --to=html --output=$@ $<
	@chmod 644 $@

all: $(patsubst %.md,%.html,$(wildcard *.md))

footer.html: footer.md | main.css
	pandoc --from=markdown --to=html --output=$@ $<
	@chmod 644 $@

clean:
	rm -f *.html
