# Makefile for VaaS static site

PANDOC   := pandoc
TEMPLATE := template.html

MD := $(wildcard *.md)
HTML := $(MD:.md=.html)

all: $(HTML)

%.html: %.md
	@echo "→ Generating $@ from $<"
	$(PANDOC) $< \
		--metadata title="$$(sed -n 's/^# //p' $< | head -1)" \
		--template=$(TEMPLATE) \
		-o $@
	

clean:
	@echo "→ Cleaning up…"
	rm -f $(HTML)

serve: all
	@echo "→ Serving at http://localhost:8000"
	python3 -m http.server 8000

.PHONY: all clean serve
