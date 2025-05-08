# Violence as a Service (VaaS) Static Site

This repo contains a simple static site powered by Markdown + Pandoc.

---

## 🚀 Bootstrap

To generate all content files and the \`Makefile\`, run:

\`\`\`sh
chmod +x bootstrap.sh
./bootstrap.sh
\`\`\`

This will create:

\`\`\`
README.md
index.md
pricing.md
api.md
press.md
disclaimer.md
Makefile
\`\`\`

---

## 📦 Build

Once bootstrapped:

\`\`\`sh
# Generate HTML from all .md
make

# (Optional) Clean generated HTML
make clean

# (Optional) Serve locally on http://localhost:8000
make serve
\`\`\`

> You can customize the HTML wrapper by editing \`template.html\` before building.

---

## 🚢 Deploy

1. Commit both your \`.md\` and generated \`.html\` files (or just \`.html\` on \`gh-pages\`).
2. Push to GitHub.
3. In your repo’s Settings → Pages, serve from either \`main\` or \`gh-pages\`.

---

## 📄 License

© 2025 VaaS Inc. • Parody content only.  
