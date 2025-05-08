# Makefile for VaaS static site

PANDOC   := pandoc
TEMPLATE := templates/template.html

MD := $(wildcard md/*.md)
HTML := $(patsubst md/%.md,www/%.html,$(MD))

all: $(HTML)

www/%.html: md/%.md
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
	cd www && python3 -m http.server 8000

.PHONY: all clean serve
