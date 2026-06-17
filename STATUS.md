# Status — specialiste-medecine-chinoise.be

Last updated: 2026-06-17T09:40:00Z

## Done
- [x] GitHub repo `appleofmycake/site` with empty `main` + `src` + `site` branches
- [x] Jinja build system: `src/_base.html` + 4 page templates + `build.py` + `deploy.sh`
- [x] All 4 pages rewritten from WP soup to clean semantic HTML
- [x] Homepage: hero, approche, therapeute, tarifs, FAQ, contact, testimonials
- [x] Blog listing: card layout with excerpt
- [x] Blog article: scraped + cleaned merveilleux-vaisseaux, with table, breadcrumb
- [x] Privacy policy: clean prose layout
- [x] CSS: design tokens from Stoic child theme, ~500 lines total
- [x] GA tag `G-XW10PLNNB1` in base template
- [x] Favicon (reuses `assets/logo.png`)
- [x] Blog link in header nav
- [x] Mobile nav: top-aligned, smaller font
- [x] Footer: dimmed copyright, aligned FB icon
- [x] Pushed: `src` and `site` branches to `origin`
- [x] Skills updated: `/wp-to-static` + `/deploy-github-pages`
- [x] CLAUDE.md updated with branch strategy + skills references

## Now
- [ ] DNS: user configures `specialiste-medecine-chinoise.be` to point to GitHub Pages
- [ ] SEO audit: verify title, desc, og, schema, canonical on all 4 pages (once live)
- [ ] Verify HTTPS works after DNS propagation

## Next
- [ ] Google Maps embed optimization (lighter alternative to iframe?)
- [ ] Performance audit (Lighthouse) once live

## Session Notes
- All decisions in DECISIONS.md 2026-06-17T09:00:00Z
- Jinja build was the right call: each page template is 30-155 lines of content vs 200+ lines with duplicated chrome
- deploy.sh needed two bug fixes: temp dir for dist/ before branch switch, and .gitignore to keep CLAUDE.md off site branch
- Visual iteration rounds on article/privacy/blog pages: content-width alignment, dim-warm color for cream backgrounds, button sizing, mobile nav
